#include "CodeWriter.hpp"
#include "Parser.hpp"
#include <cstdint>
#include <format>
#include <fstream>
#include <iostream>
#include <stdexcept>
#include <string>
#include <unordered_map>

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

CodeWriter::CodeWriter(const std::string &output_file,
                       const std::string &file_name) {
    ofstream_ = std::ofstream(output_file);
    file_name_ = file_name;
    if (!ofstream_.is_open()) {
        throw std::runtime_error("Cannot open the file: " + output_file);
    }
}

void CodeWriter::unaryOP(const std::string &command) {
    write("@SP");
    write("M=M-1");
    write("A=M");
    write(unary_ops[command]);
    increaseSP();
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
    increaseSP();
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
    increaseSP();
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
        increaseSP();
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
    write(std::format("({}.{}${})", file_name_, function_name_, label));
}

void CodeWriter::writeGoto(const std::string &label) {
    write(std::format("@{}.{}${}", file_name_, function_name_, label));
    write("0;JMP");
}

void CodeWriter::writeIf(const std::string &label) {
    write("@SP");
    write("M=M-1");
    write("A=M");
    write("D=M");
    write(std::format("@{}.{}${}", file_name_, function_name_, label));
    write("D;JNE");
}

void CodeWriter::close() {
    write("(END)");
    write("@END");
    write("0;JMP");
    ofstream_.close();
}
