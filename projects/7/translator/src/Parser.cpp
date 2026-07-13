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

std::vector<std::string> split(const std::string &str, std::string delimiters) {
    std::vector<std::string> tokens;
    size_t start = str.find_first_not_of(delimiters);

    while (start != std::string::npos) {
        size_t end = str.find_first_of(delimiters, start);
        tokens.push_back(str.substr(start, end - start));
        start = str.find_first_not_of(delimiters, end);
    }
    return tokens;
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
            auto comment_index = trimed_line.find("//");
            if (comment_index != trimed_line.npos) {
                trimed_line = trimed_line.substr(0, comment_index);
            }
            code_lines.push_back(trimed_line);
        }
    }
}

bool Parser::hasMoreLines() const {
    return current_line_index + 1 < code_lines.size();
}

std::string Parser::advance() {
    if (hasMoreLines()) {
        current_line_index++;
    } else {
        throw std::runtime_error("Cannot advance at the end of the file.");
    }

    auto current_line = code_lines[current_line_index];

    // std::cout << current_line << std::endl;

    if (current_line.starts_with("push")) {
        command_type_ = CommandType::C_PUSH;
        auto tokens = split(current_line, " \t");
        arg1_ = tokens[1];
        arg2_ = tokens[2];
    } else if (current_line.starts_with("pop")) {
        command_type_ = CommandType::C_POP;
        auto tokens = split(current_line, " \t");
        arg1_ = tokens[1];
        arg2_ = tokens[2];
    } else if (current_line == "add" || current_line == "sub" ||
               current_line == "neg" || current_line == "eq" ||
               current_line == "gt" || current_line == "lt" ||
               current_line == "and" || current_line == "or" ||
               current_line == "not") {
        command_type_ = CommandType::C_ARITHMETIC;
        arg1_ = current_line;
        arg2_ = "";
    } else {
        throw std::invalid_argument("Unknown command: " + current_line);
    }

    return current_line;
}

CommandType Parser::commandType() const { return command_type_; }

std::string Parser::arg1() const { return arg1_; }

std::string Parser::arg2() const { return arg2_; }
