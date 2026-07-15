#include "CodeWriter.hpp"
#include "Parser.hpp"
#include <cstdint>
#include <filesystem>
#include <format>
#include <fstream>
#include <iostream>
#include <sstream>
#include <stdexcept>
#include <string>
#include <unordered_map>
#include <utility>

namespace {

std::unordered_map<std::string, std::string> unary_ops = {{"neg", "M=-M"},
                                                          {"not", "M=!M"}};

std::unordered_map<std::string, std::string> binary_ops = {
    {"add", "M=D+M"},
    {"sub", "M=M-D"},
    {"and", "M=D&M"},
    {"or", "M=D|M"},
};

std::unordered_map<std::string, std::string> compare_ops = {
    {"eq", "D;JEQ"},
    {"gt", "D;JGT"},
    {"lt", "D;JLT"},
};

std::unordered_map<std::string, std::string> relative_segment_pointers = {
    {"local", "LCL"},
    {"argument", "ARG"},
    {"this", "THIS"},
    {"that", "THAT"},
};

} // namespace

CodeWriter::CodeWriter(const std::string &output_file) {
    ofstream_ = std::ofstream(output_file, std::ios::trunc);
    if (!ofstream_.is_open()) {
        throw std::runtime_error("Cannot open the file: " + output_file);
    }
}

void CodeWriter::setFileName(const std::string &file_name) {
    std::filesystem::path file_path = (file_name);
    file_name_ = file_path.stem();
}

void CodeWriter::unaryOP(const std::string &command) {
    write("@SP");
    write("M=M-1");
    write("A=M");
    write(unary_ops[command]);
    incrSP();
}

void CodeWriter::binaryOP(const std::string &command) {
    // Access the vaule at the top of the stack and put it in D
    write("@SP");
    write("M=M-1");
    write("A=M");
    write("D=M");
    // Access the vaule at the second position in the stack via M
    write("@SP");
    write("M=M-1");
    write("A=M");
    // Perform a binary operation on M and D, and put the result back into M
    write(binary_ops[command]);
    incrSP();
}

void CodeWriter::compareOP(const std::string &command) {
    // Access the vaule at the top of the stack and put it in D
    write("@SP");
    write("M=M-1");
    write("A=M");
    write("D=M");
    // Access the vaule at the second position in the stack via M
    write("@SP");
    write("M=M-1");
    write("A=M");
    // Perform M-D and put the result back into D
    write("D=M-D");
    // Jump to the COMPARE_TRUE_x label if D satisfies the comparison operation
    write(std::format("@COMPARE_TRUE_{}", compare_counter));
    write(compare_ops[command]);
    // Set the value of the address pointed to by @SP to false
    write("@SP");
    write("A=M");
    write("M=0");
    // Jump to the COMPARE_FALSE_x label to skip the TRUE process
    write(std::format("@COMPARE_FALSE_{}", compare_counter));
    write("0;JMP");
    // Set the value of the address pointed to by @SP to true
    write(std::format("(COMPARE_TRUE_{})", compare_counter));
    write("@SP");
    write("A=M");
    write("M=-1");
    write(std::format("(COMPARE_FALSE_{})", compare_counter));
    incrSP();
    compare_counter++;
}

void CodeWriter::writeArithmetic(const std::string &command) {
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

void CodeWriter::accessAbsoluteSegment(const std::string &segment,
                                       int16_t index) {
    if (segment == "pointer") {
        // Access the value of THIS or THAT
        index == 0 ? write("@THIS") : write("@THAT");
    } else if (segment == "temp") {
        // Access the value of TEMP[0-7] at R[5-12]
        write(std::format("@R{}", (index + 5)));
    } else if (segment == "static") {
        // Access the value of STATIC[0-239] at RAM[16-255]
        write(std::format("@{}.{}", file_name_, index));
    } else {
        throw std::invalid_argument("Invalid segment: " + segment);
    }
}

void CodeWriter::accessRelativeSegment(const std::string &segment,
                                       int16_t index,
                                       const std::string &store_at) {
    // Store the segment index in D
    write(std::format("@{}", index));
    write("D=A");
    // Get the segment base address
    write("@" + relative_segment_pointers[segment]);
    write(std::format("{}=D+M", store_at));
}

void CodeWriter::writePushPop(CommandType command, const std::string &segment,
                              int16_t index) {
    switch (command) {
    case CommandType::C_PUSH:
        if (segment == "constant") {
            // Store the constant vaule in A
            write(std::format("@{}", index));
            write("D=A");
        } else if (relative_segment_pointers.contains(segment)) {
            // Access the segment address (Store the address in A)
            accessRelativeSegment(segment, index, "A");
            // Store the segment value in D
            write("D=M");
        } else {
            accessAbsoluteSegment(segment, index);
            // Store the segment value in D
            write("D=M");
        }
        // Push the value in D to the address pointed to by @SP
        write("@SP");
        write("A=M");
        write("M=D");
        incrSP();
        break;
    case CommandType::C_POP:
        if (segment == "constant") {
            throw std::invalid_argument(
                "Segment <constant> is invalid in the pop operation.");
        }
        if (relative_segment_pointers.contains(segment)) {
            // Access the segment address (Store the address in D)
            accessRelativeSegment(segment, index, "D");
            // Backup the segment address in D to R13
            write("@R13");
            write("M=D");

            // Access the value at the top of the stack and put it into D
            write("@SP");
            write("M=M-1");
            write("A=M");
            write("D=M");

            // Restore the segment address in R13 to A
            // Set the value pointed to by that address to D
            write("@R13");
            write("A=M");
            write("M=D");
        } else {
            // Access the value at the top of the stack and put it into D
            write("@SP");
            write("M=M-1");
            write("A=M");
            write("D=M");
            // Access the segment address (Store the address in A)
            accessAbsoluteSegment(segment, index);
            write("M=D");
        }
        break;
    default:
        throw std::invalid_argument(
            std::format("Invalid push pop operation: {}", to_string(command)));
    }
}

void CodeWriter::writeLabel(const std::string &label) {
    write(std::format("({}${})", function_name_, label));
}

void CodeWriter::writeGoto(const std::string &label) {
    write(std::format("@{}${}", function_name_, label));
    write("0;JMP");
}

void CodeWriter::writeIf(const std::string &label) {
    write("@SP");
    write("M=M-1");
    write("A=M");
    write("D=M");
    write(std::format("@{}${}", function_name_, label));
    write("D;JNE");
}

void CodeWriter::writeFunction(const std::string &function_name,
                               int16_t nargs) {
    function_name_ = function_name;
    if (function_name == "Sys.init") {
        has_sys_init_ = true;
    }
    write(std::format("({})", function_name));
    for (int i = 0; i < nargs; i++) {
        write("@SP");
        write("A=M");
        write("M=0");
        incrSP();
    }
}

inline void CodeWriter::pushFrame(const std::string &name,
                                  const std::string &value_at) {
    write("@" + name);
    write("D=" + value_at);
    write("@SP");
    write("A=M");
    write("M=D");
    incrSP();
}

void CodeWriter::writeCall(const std::string &function_name, int16_t nargs) {
    int16_t call_index = 0;
    if (call_counter_.contains(function_name_)) {
        call_index = call_counter_[function_name_];
    }
    std::string return_addr_label =
        std::format("{}$ret.{}", function_name_, call_index);

    write("// push returnAddress");
    pushFrame(return_addr_label, "A");
    write("// push LCL");
    pushFrame("LCL");
    write("// push ARG");
    pushFrame("ARG");
    write("// push THIS");
    pushFrame("THIS");
    write("// push THAT");
    pushFrame("THAT");

    // ARG = SP - 5 - nargs
    write("// ARG = SP - 5 - nargs");
    write(std::format("@{}", (nargs + 5)));
    write("D=A");
    write("@SP");
    write("D=M-D");
    write("@ARG");
    write("M=D");

    // LCL = SP
    write("// LCL = SP");
    write("@SP");
    write("D=M");
    write("@LCL");
    write("M=D");

    write(std::format("@{}", function_name));
    write("0;JMP");
    write(std::format("({})", return_addr_label));

    call_index++;
    call_counter_[function_name_] = call_index;
}

inline void CodeWriter::restoreFrame(const std::string &name, int16_t offset) {
    if (offset == 1) {
        write("@LCL");
        write("A=M-1");
    } else {
        write(std::format("@{}", offset));
        write("D=A");
        write("@LCL");
        write("A=M-D");
    }

    write("D=M");
    write("@" + name);
    write("M=D");
}

void CodeWriter::writeReturn() {
    write("// Retrieve retAddr and put it into R13 before setting the return "
          "value; otherwise, the return value will overwrite it when nargs==0");
    restoreFrame("R13", 5);

    write("// Get the return value at the top of the stack and put it at *ARG");
    write("@SP");
    write("A=M-1");
    write("D=M");
    write("@ARG");
    write("A=M");
    write("M=D");

    write("// Restore SP, SP = ARG + 1");
    write("@ARG");
    write("D=M");
    write("@SP");
    write("M=D+1");

    write("// Restore THAT");
    restoreFrame("THAT", 1);
    write("// Restore THIS");
    restoreFrame("THIS", 2);
    write("// Restore ARG");
    restoreFrame("ARG", 3);
    write("// Restore LCL");
    restoreFrame("LCL", 4);

    write("// goto retAddr");
    write("@R13");
    write("A=M");
    write("0;JMP");
}

void CodeWriter::close() {
    write("(END)");
    write("@END");
    write("0;JMP");

    if (has_sys_init_) {
        std::stringstream main_code_buffer = std::move(buffer_);
        buffer_ = std::stringstream();
        function_name_ = "bootstrap";
        write("@256");
        write("D=A");
        write("@SP");
        write("M=D");
        writeCall("Sys.init", 0);
        write("@END");
        write("0;JMP");
        ofstream_ << buffer_.rdbuf() << main_code_buffer.rdbuf();
    } else {
        ofstream_ << buffer_.rdbuf();
    }
    ofstream_.close();
}
