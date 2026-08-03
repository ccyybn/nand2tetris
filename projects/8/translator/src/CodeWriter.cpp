#include "CodeWriter.hpp"

#include <cstddef>
#include <cstdint>
#include <cstdlib>
#include <filesystem>
#include <format>
#include <fstream>
#include <iostream>
#include <sstream>
#include <stdexcept>
#include <string>
#include <unordered_map>
#include <utility>

#include "Parser.hpp"

namespace {

// Lookup table for unary arithmetic/logical operations operating directly on memory (stack top).
std::unordered_map<std::string, std::string> unary_ops = {{"neg", "M=-M"}, {"not", "M=!M"}};

// Lookup table for binary arithmetic/logical operations where D = popped second operand, M = first operand.
std::unordered_map<std::string, std::string> binary_ops = {
    {"add", "M=D+M"},
    {"sub", "M=M-D"},
    {"and", "M=D&M"},
    {"or", "M=D|M"},
};

// Maps VM virtual memory segments to their corresponding hardware base pointer registers.
std::unordered_map<std::string, std::string> relative_segment_pointers = {
    {"local", "LCL"},
    {"argument", "ARG"},
    {"this", "THIS"},
    {"that", "THAT"},
};

// Jump instructions for comparison operations evaluated against D register value (D = x - y).
std::unordered_map<std::string, std::string> compare_ops = {
    {"eq", "D;JEQ"},
    {"gt", "D;JGT"},
    {"lt", "D;JLT"},
};

}  // namespace

// Load constant integer into target register (e.g., loadConst("D", 5) => @5; D=A)
void CodeWriter::loadConst(const std::string& target, int16_t val) {
    write(std::format("@{}", val));
    write(std::format("{}=A", target));
}

// Load symbol address into target register (e.g., loadConst("D", "LABEL") => @LABEL; D=A)
void CodeWriter::loadConst(const std::string& target, const std::string& symbol) {
    write(std::format("@{}", symbol));
    write(std::format("{}=A", target));
}

// Load memory value at source register into destination register (e.g., fromRegister("D", "LCL") => @LCL; D=M)
void CodeWriter::fromRegister(const std::string& dst, const std::string& src) {
    write(std::format("@{}", src));
    write(std::format("{}=M", dst));
}

// Store register value into specified RAM address (e.g., toRegister("R13", "D") => @R13; M=D)
void CodeWriter::toRegister(const std::string& dst, const std::string& src) {
    write(std::format("@{}", dst));
    write(std::format("M={}", src));
}

// Store value into the memory address pointed to by a pointer register (e.g., *pointer = src)
void CodeWriter::toPointer(const std::string& pointer, const std::string& src) {
    write(std::format("@{}", pointer));
    write("A=M");
    write(std::format("M={}", src));
}

// Copy value between memory locations via D register: dst = src
void CodeWriter::assign(const std::string& dst, const std::string& src) {
    write(std::format("@{}", src));
    write("D=M");
    write(std::format("@{}", dst));
    write("M=D");
}

// Perform addition on destination register: dst = src + val
void CodeWriter::add(const std::string& dst, const std::string& src, size_t val) {
    if (val == 1) {
        write(std::format("{}={}+1", dst, src));
    } else {
        write(std::format("@{}", val));
        write(std::format("{}={}+A", dst, src));
    }
}

// Perform constant subtraction on destination register: dst = src - val
void CodeWriter::sub(const std::string& dst, const std::string& src, size_t val) {
    if (val == 1) {
        write(std::format("{}={}-{}", dst, src, val));
    } else {
        write(std::format("@{}", val));
        write(std::format("{}={}-A", dst, src));
    }
}

// Perform register memory subtraction on destination register: dst = src - *val
void CodeWriter::sub(const std::string& dst, const std::string& src, const std::string& val) {
    write(std::format("@{}", val));
    write(std::format("{}={}-M", dst, src));
}

// Push value of D register onto stack and increment SP (*SP++ = D)
void CodeWriter::pushD() {
    write("@SP");
    write("A=M");
    write("M=D");
    write("@SP");
    write("M=M+1");
}

// Decrement SP and pop top value into D register (D = *--SP)
void CodeWriter::popD() {
    write("@SP");
    write("AM=M-1");
    write("D=M");
}

// Load memory value from source into D, then push onto stack
void CodeWriter::push(const std::string& src) {
    write(std::format("@{}", src));
    write("D=M");
    pushD();
}

// Unconditional jump to target label
void CodeWriter::jmp(const std::string& target) {
    write(std::format("@{}", target));
    write("0;JMP");
}

// Indirect jump to address stored in target register
void CodeWriter::jmpBy(const std::string& target) {
    fromRegister("A", target);
    write("0;JMP");
}

// Conditional jump to target label given standard Hack assembly condition
void CodeWriter::jmpCond(const std::string& target, const std::string& cond) {
    write(std::format("@{}", target));
    write(cond);
}

// ============================================================================
// Core Code Generation Implementation
// ============================================================================

CodeWriter::CodeWriter(const std::string& output_file) {
    ofstream_ = std::ofstream(output_file, std::ios::trunc);
    if (!ofstream_.is_open()) {
        throw std::runtime_error("Cannot open the file: " + output_file);
    }
}

void CodeWriter::setFileName(const std::string& file_name) {
    std::filesystem::path file_path = (file_name);
    file_name_ = file_path.stem();
}

// Handles unary arithmetic/logical operations (neg, not) directly at stack top
void CodeWriter::unaryOP(const std::string& command) {
    fromRegister("A", "SP");
    write("A=A-1");
    write(unary_ops[command]);
}

// Handles binary arithmetic/logical operations (add, sub, and, or)
void CodeWriter::binaryOP(const std::string& command) {
    popD();          // Pop second operand into D
    write("A=A-1");  // Point A to first operand at stack top
    write(binary_ops[command]);
}

// Handles comparison operations (eq, gt, lt) via shared VM helper routines
void CodeWriter::compareOP(const std::string& command) {
    std::string ret_label = std::format("CMP_RET_{}", compare_counter++);

    // 1. Store unique return label address in R15
    loadConst("D", ret_label);
    toRegister("R15", "D");

    // 2. Compute difference (x - y) in D register
    popD();          // D = y (second operand)
    write("A=A-1");  // A points to x (first operand)
    write("D=M-D");  // D = x - y

    // 3. Jump to unified comparison subroutine (__VM_eq__, __VM_gt__, or __VM_lt__)
    jmp(std::format("__VM_{}__", command));

    // 4. Return point after evaluation
    write(std::format("({})", ret_label));
}

void CodeWriter::writeArithmetic(const std::string& command) {
    if (unary_ops.contains(command)) {
        unaryOP(command);
    } else if (binary_ops.contains(command)) {
        binaryOP(command);
    } else if (compare_ops.contains(command)) {
        compareOP(command);
    } else {
        throw std::invalid_argument("Invalid arithmetic operation: " + command);
    }
}

// Computes target memory address for absolute segments (pointer, temp, static)
void CodeWriter::accessAbsoluteSegment(const std::string& segment, int16_t index) {
    if (segment == "pointer") {
        write(index == 0 ? "@THIS" : "@THAT");
    } else if (segment == "temp") {
        write(std::format("@R{}", (index + 5)));
    } else if (segment == "static") {
        write(std::format("@{}.{}", file_name_, index));
    } else {
        throw std::invalid_argument("Invalid segment: " + segment);
    }
}

// Computes target memory address for relative segments (local, argument, this, that): base + index
void CodeWriter::accessRelativeSegment(const std::string& segment, int16_t index, const std::string& store_at) {
    loadConst("D", index);
    write("@" + relative_segment_pointers[segment]);
    write(std::format("{}=D+M", store_at));  // A = base + index (for push) OR D = base + index (for pop)
}

void CodeWriter::writePushPop(CommandType command, const std::string& segment, int16_t index) {
    switch (command) {
        case CommandType::C_PUSH:
            if (segment == "constant") {
                loadConst("D", index);
            } else if (relative_segment_pointers.contains(segment)) {
                accessRelativeSegment(segment, index, "A");
                write("D=M");
            } else {
                accessAbsoluteSegment(segment, index);
                write("D=M");
            }
            // Push retrieved value onto stack
            pushD();
            break;
        case CommandType::C_POP:
            if (segment == "constant") {
                throw std::invalid_argument("Segment <constant> is invalid in pop operation.");
            }
            if (relative_segment_pointers.contains(segment)) {
                // For relative segments, compute address into D, save in R13, then store popped value
                accessRelativeSegment(segment, index, "D");
                toRegister("R13", "D");
                popD();
                fromRegister("A", "R13");
                write("M=D");
            } else {
                popD();
                accessAbsoluteSegment(segment, index);
                write("M=D");
            }
            break;
        default:
            throw std::invalid_argument(std::format("Invalid push pop operation: {}", to_string(command)));
    }
}

// Generates function-scoped VM label definition
void CodeWriter::writeLabel(const std::string& label) { write(std::format("({}${})", function_name_, label)); }

// Generates unconditional jump to function-scoped VM label
void CodeWriter::writeGoto(const std::string& label) { jmp(std::format("{}${}", function_name_, label)); }

// Generates conditional jump to function-scoped VM label if popped stack top is non-zero
void CodeWriter::writeIf(const std::string& label) {
    popD();
    jmpCond(std::format("{}${}", function_name_, label), "D;JNE");
}

// Generates function entry point label and initializes local variables to 0
void CodeWriter::writeFunction(const std::string& function_name, int16_t nargs) {
    function_name_ = function_name;
    if (function_name == "Sys.init") {
        has_sys_init_ = true;
    }
    write(std::format("({})", function_name));

    // Allocate and zero-initialize local variables on stack
    if (nargs > 0) {
        write("D=0");
        for (int i = 0; i < nargs; i++) {
            pushD();
        }
    }
}

// Prepares parameters and jumps to shared call subroutine (__VM_CALL__)
void CodeWriter::writeCall(const std::string& function_name, int16_t nargs) {
    int16_t call_index = call_counter_[function_name_]++;
    std::string return_addr_label = std::format("{}$ret.{}", function_name_, call_index);

    // Pass argument count, function address, and return address via temporary registers
    loadConst("D", nargs);
    toRegister("R13", "D");  // R13 = nargs

    loadConst("D", function_name);
    toRegister("R14", "D");  // R14 = function_address

    loadConst("D", return_addr_label);
    toRegister("R15", "D");  // R15 = return_address

    jmp("__VM_CALL__");

    // Declares unique return entry point after call completion
    write(std::format("({})", return_addr_label));
}

// Jumps to shared return subroutine (__VM_RETURN__)
void CodeWriter::writeReturn() { jmp("__VM_RETURN__"); }

// Appends shared VM helper subroutines to minimize generated assembly bloat
void CodeWriter::writeHelperSubroutines() {
    // ------------------------------------------------------------------------
    // 1. Shared Return Routine (__VM_RETURN__)
    // ------------------------------------------------------------------------
    write("(__VM_RETURN__)");
    assign("R13", "LCL");  // R13 = FRAME = LCL

    // Extract return address RET = *(FRAME - 5) into R14
    sub("A", "D", 5);        // A = LCL - 5
    write("D=M");            // D = *(LCL - 5)
    toRegister("R14", "D");  // R14 = RET

    // Overwrite first argument (arg0 / *ARG) with top-of-stack return value
    popD();                 // D = Return Value
    toPointer("ARG", "D");  // *ARG = Return Value

    // Reset Stack Pointer: SP = ARG + 1
    fromRegister("D", "ARG");
    write("D=D+1");
    toRegister("SP", "D");

    // Restore segment pointers (THAT, THIS, ARG, LCL) sequentially from frame base
    static const char* regs[] = {"THAT", "THIS", "ARG", "LCL"};
    for (int i = 0; i < 4; ++i) {
        write("@R13");             // R13 = FRAME base tracker
        write("AM=M-1");           // Pre-decrement R13 and update A
        write("D=M");              // D = saved pointer value
        toRegister(regs[i], "D");  // Restore register
    }

    // Jump back to caller's return address stored in R14
    jmpBy("R14");

    // ------------------------------------------------------------------------
    // 2. Shared Call Routine (__VM_CALL__)
    // ------------------------------------------------------------------------
    write("(__VM_CALL__)");

    // Push saved return address (R15) onto stack
    push("R15");

    // Save Caller's frame segment registers (LCL, ARG, THIS, THAT)
    static const char* segs[] = {"LCL", "ARG", "THIS", "THAT"};
    for (const char* seg : segs) {
        push(seg);
    }

    // Set ARG = SP - 5 - nargs (R13 holds nargs)
    fromRegister("D", "SP");
    sub("D", "D", 5);      // D = SP - 5
    sub("D", "D", "R13");  // D = (SP - 5) - nargs
    toRegister("ARG", "D");

    // Set LCL = SP (Callee frame base)
    assign("LCL", "SP");

    // Jump to Callee function address stored in R14
    jmpBy("R14");

    // ------------------------------------------------------------------------
    // 3. Shared Comparison Routines (__VM_eq__, __VM_gt__, __VM_lt__)
    // ------------------------------------------------------------------------
    static const std::pair<std::string, std::string> cmps[] = {{"eq", "JEQ"}, {"gt", "JGT"}, {"lt", "JLT"}};
    for (const auto& [op, jmp_cond] : cmps) {
        write(std::format("(__VM_{}__)", op));
        jmpCond(std::format("__VM_{}_TRUE__", op), std::format("D;{}", jmp_cond));

        // False branch: set condition result at stack top to 0 (false)
        fromRegister("A", "SP");
        write("A=A-1");
        write("M=0");
        jmp(std::format("__VM_{}_END__", op));

        // True branch: set condition result at stack top to -1 (true / 0xFFFF)
        write(std::format("(__VM_{}_TRUE__)", op));
        fromRegister("A", "SP");
        write("A=A-1");
        write("M=-1");

        // Common exit point: jump back to caller's saved address in R15
        write(std::format("(__VM_{}_END__)", op));
        fromRegister("A", "R15");
        write("0;JMP");
    }
}

// Finalizes ASM file generation, prepending bootstrap code if Sys.init is present
void CodeWriter::close() {
    write("(END)");
    jmp("END");

    // Append helper subroutines at file end
    writeHelperSubroutines();

    if (has_sys_init_) {
        std::stringstream main_code_buffer = std::move(buffer_);
        buffer_ = std::stringstream();
        function_name_ = "bootstrap";

        // Bootstrap initialization: SP = 256, call Sys.init 0
        loadConst("D", 256);
        toRegister("SP", "D");

        writeCall("Sys.init", 0);
        jmp("END");

        // Write bootstrap code before main code buffer
        ofstream_ << buffer_.rdbuf() << main_code_buffer.rdbuf();
    } else {
        ofstream_ << buffer_.rdbuf();
    }
    ofstream_.close();
}
