#pragma once
#include <string>
#include <vector>

enum class CommandType {
    C_ARITHMETIC,
    C_PUSH,
    C_POP,
    C_LABEL,
    C_GOTO,
    C_IF,
    C_FUNCTION,
    C_RETURN,
    C_CALL
};

constexpr std::string_view to_string(CommandType c) {
    switch (c) {
    case CommandType::C_POP:
        return "C_POP";
    case CommandType::C_PUSH:
        return "C_PUSH";
    case CommandType::C_ARITHMETIC:
        return "C_ARITHMETIC";
    case CommandType::C_CALL:
        return "C_CALL";
    case CommandType::C_FUNCTION:
        return "C_FUNCTION";
    case CommandType::C_GOTO:
        return "C_GOTO";
    case CommandType::C_IF:
        return "C_IF";
    case CommandType::C_LABEL:
        return "C_LABEL";
    case CommandType::C_RETURN:
        return "C_RETURN";
    default:
        return "Unknown";
    }
}

class Parser {
  private:
    std::vector<std::string> code_lines;
    size_t current_line_index = -1;
    CommandType command_type_;
    std::string arg1_;
    std::string arg2_;

  public:
    Parser(const std::string &input_file);
    std::string advance();
    bool hasMoreLines() const;
    CommandType commandType() const;
    std::string arg1() const;
    std::string arg2() const;
};
