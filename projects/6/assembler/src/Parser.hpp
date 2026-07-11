#pragma once
#include <string>
#include <vector>

enum class InstructionType { A_INSTRUCTION, C_INSTRUCTION, L_INSTRUCTION };

class Parser {
  private:
    std::vector<std::string> code_lines;
    size_t current_line_index = -1;
    InstructionType instruction_type_;
    std::string symbol_;
    std::string dest_;
    std::string comp_;
    std::string jump_;

  public:
    Parser(const std::string &input_file);
    std::string advance();
    void reset();
    bool hasMoreLines() const;
    InstructionType instructionType() const;
    std::string symbol() const;
    std::string dest() const;
    std::string comp() const;
    std::string jump() const;
};
