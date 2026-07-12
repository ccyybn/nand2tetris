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
