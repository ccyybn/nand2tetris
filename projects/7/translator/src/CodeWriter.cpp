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

std::unordered_map<std::string, std::string> segment_pointers = {
    {"local", "LCL"},
    {"argument", "ARG"},
    {"this", "THIS"},
    {"that", "THAT"},
};

} // namespace

CodeWriter::CodeWriter(const std::string &output_file) {
    ofstream_ = std::ofstream(output_file);
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
    // Jump to the TRUE label if D satisfies the comparison operation
    write("@TRUE");
    write(compare_ops[command]);
    // Set the value of the address pointed to by @SP to false
    write("@SP");
    write("A=M");
    write("M=0");
    // Jump to the FALSE label to skip the TRUE process
    write("@FALSE");
    write("0;JMP");
    // Set the value of the address pointed to by @SP to true
    write("(TRUE)");
    write("@SP");
    write("A=M");
    write("M=-1");
    write("(FALSE)");
    increaseSP();
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

void CodeWriter::accessSegment(const std::string &segment, int16_t index) {
    if (segment_pointers.contains(segment)) {
        // Store the segment index in D
        write(std::format("@{}", index));
        write("D=A");
        // Get the segment base address
        write("@" + segment_pointers[segment]);
        // Add the base address(M) and the segment index(D)
        write("A=D+M");
    } else if (segment == "pointer") {
        // Access the value of THIS or THAT
        index == 0 ? write("@THIS") : write("@THAT");
    } else if (segment == "constant") {
        // Store the constant vaule in A
        write(std::format("@{}", index));
    } else {
        throw std::invalid_argument("Invalid segment: " + segment);
    }
}

void CodeWriter::writePushPop(CommandType command, const std::string &segment,
                              int16_t index) {
    switch (command) {
    case CommandType::C_PUSH:
        accessSegment(segment, index);
        // Store the segment value in D
        segment == "constant" ? write("D=A") : write("D=M");
        // Push the value in D to the address pointed to by @SP
        write("@SP");
        write("A=M");
        write("M=D");
        increaseSP();
        break;
    case CommandType::C_POP:
        if (segment == "constant") {
            std::invalid_argument(
                "Segment <constant> is invalid in the pop operation.");
        }
        accessSegment(segment, index);
        // Backup the segment address to R13
        write("D=A");
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
    default:
        throw std::invalid_argument(
            std::format("Invalid push pop operation: {}", to_string(command)));
    }
}

void CodeWriter::close() { ofstream_.close(); }
