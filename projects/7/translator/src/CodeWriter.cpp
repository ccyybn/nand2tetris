#include "CodeWriter.hpp"
#include "Parser.hpp"
#include <cstdint>
#include <fstream>
#include <iostream>
#include <stdexcept>
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

} // namespace

CodeWriter::CodeWriter(const std::string &output_file) {
    ofstream_ = std::ofstream(output_file);
    if (!ofstream_.is_open()) {
        throw std::runtime_error("Cannot open the file: " + output_file);
    }
}

void CodeWriter::write(const std::string &str) { ofstream_ << str << "\n"; }

void CodeWriter::binary_op(const std::string &command) {
    write("@SP");
    write("M=M-1");
    write("A=M");
    write("D=M");
    write("@SP");
    write("M=M-1");
    write("A=M");
    write(binary_ops[command]);
}

void CodeWriter::unary_op(const std::string &command) {
    write("@SP");
    write("M=M-1");
    write("A=M");
    write(unary_ops[command]);
}

void CodeWriter::compare_op(const std::string &command) {
    write("@SP");
    write("M=M-1");
    write("A=M");
    write("D=M");
    write("@SP");
    write("M=M-1");
    write("A=M");
    write("D=M-D");
    write("@TRUE");
    write(compare_ops[command]);
    write("@SP");
    write("A=M");
    write("M=0");
    write("@FALSE");
    write("0;JMP");
    write("(TRUE)");
    write("@SP");
    write("A=M");
    write("M=-1");
    write("(FALSE)");
}

void CodeWriter::writeArithmetic(const std::string &command) {
    if (unary_ops.contains(command)) {
        unary_op(command);
    } else if (binary_ops.contains(command)) {
        binary_op(command);
    } else if (compare_ops.contains(command)) {
        compare_op(command);
    } else {
        throw std::invalid_argument("Invalid arithmetic operation: " + command);
    }
}

void CodeWriter::writePushPop(CommandType command, const std::string &segment,
                              int16_t) {}

void CodeWriter::close() { ofstream_.close(); }
