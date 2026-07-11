#include "Parser.hpp"
#include <fstream>
#include <iostream>
#include <stdexcept>
#include <string>
#include <vector>

static std::string trim(const std::string &str) {
    const std::string WHITESPACE = " \t\r\n";

    size_t start = str.find_first_not_of(WHITESPACE);
    if (start == std::string::npos) {
        return "";
    }

    size_t end = str.find_last_not_of(WHITESPACE);

    return str.substr(start, end - start + 1);
}

Parser::Parser(const std::string &input_file) {
    std::fstream file(input_file);
    if (!file.is_open()) {
        throw std::runtime_error("Cannot open the file: " + input_file);
    }
    std::string line;
    while (std::getline(file, line)) {
        std::string trimed_line = trim(line);
        // std::cout << trimed_line << std::endl;

        if (!trimed_line.empty() && !trimed_line.starts_with("//")) {
            code_lines.push_back(trimed_line);
        }
    }
}

bool Parser::hasMoreLines() const {
    return current_line_index + 1 < code_lines.size();
}

void Parser::reset() {
    current_line_index = -1;
    symbol_ = "";
    dest_ = "";
    comp_ = "";
    jump_ = "";
}

std::string Parser::advance() {
    if (hasMoreLines()) {
        current_line_index++;
    } else {
        throw std::runtime_error("Cannot advance at the end of the file.");
    }

    auto current_line = code_lines[current_line_index];

    // std::cout << current_line << std::endl;

    if (current_line.starts_with('@')) {
        instruction_type_ = InstructionType::A_INSTRUCTION;
    } else if (current_line.starts_with('(')) {
        instruction_type_ = InstructionType::L_INSTRUCTION;
    } else {
        instruction_type_ = InstructionType::C_INSTRUCTION;
    }

    if (instruction_type_ == InstructionType::A_INSTRUCTION) {
        symbol_ = current_line.substr(1, current_line.size() - 1);
    } else if (instruction_type_ == InstructionType::L_INSTRUCTION) {
        symbol_ = current_line.substr(1, current_line.size() - 2);
    }

    if (instruction_type_ == InstructionType::C_INSTRUCTION) {
        symbol_ = "";
        auto index_of_equal = current_line.find_first_of('=');
        auto index_of_semicolon = current_line.find_first_of(';');

        if (index_of_equal != std::string::npos) {
            dest_ = current_line.substr(0, index_of_equal);
        } else {
            dest_ = "";
        }

        if (index_of_equal != std::string::npos) {
            comp_ = current_line.substr(
                index_of_equal + 1, index_of_semicolon - index_of_equal - 1);
        } else {
            comp_ = current_line.substr(0, index_of_semicolon);
        }

        if (index_of_semicolon != std::string::npos) {
            jump_ = current_line.substr(index_of_semicolon + 1,
                                        current_line.size() -
                                            index_of_semicolon - 1);
        } else {
            jump_ = "";
        }
    } else {
        dest_ = "";
        comp_ = "";
        jump_ = "";
    }

    return current_line;
}

InstructionType Parser::instructionType() const { return instruction_type_; }

std::string Parser::symbol() const { return symbol_; }

std::string Parser::dest() const { return dest_; }

std::string Parser::comp() const { return comp_; }

std::string Parser::jump() const { return jump_; }
