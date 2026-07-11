#include "Code.hpp"
#include "Parser.hpp"
#include <algorithm>
#include <bitset>
#include <cstddef>
#include <fstream>
#include <iostream>
#include <stdexcept>
#include <string>
#include <unordered_map>

namespace {

bool is_numeric(const std::string &s) {
    if (s.empty())
        return false;

    return std::all_of(s.begin(), s.end(),
                       [](unsigned char c) { return std::isdigit(c); });
}

std::unordered_map<std::string, size_t> g_symbol_map = {
    {"R0", 0},   {"R1", 1},         {"R2", 2},     {"R3", 3},   {"R4", 4},
    {"R5", 5},   {"R6", 6},         {"R7", 7},     {"R8", 8},   {"R9", 9},
    {"R10", 10}, {"R11", 11},       {"R12", 12},   {"R13", 13}, {"R14", 14},
    {"R15", 15}, {"SP", 0},         {"LCL", 1},    {"ARG", 2},  {"THIS", 3},
    {"THAT", 4}, {"SCREEN", 16384}, {"KBD", 24576}};

} // namespace

void assemble(const std::string &input_file, const std::string &output_file) {

    size_t current_line_number = 0;
    size_t a_symbol_index = 16;
    Parser parser(input_file);
    std::ofstream output_stream(output_file);
    if (!output_stream.is_open()) {
        throw std::runtime_error("Cannot open the file: " + output_file);
    }

    std::cout << "[FIRST ROUND]: " << std::endl;

    while (parser.hasMoreLines()) {
        auto current_line = parser.advance();

        // std::cout << "instruction_type: "
        //           << static_cast<int>(parser.instructionType())
        //           << ", symbol: " << parser.symbol()
        //           << ", dest: " << parser.dest() << ", comp: " <<
        //           parser.comp()
        //           << ", jump: " << parser.jump() << std::endl;

        if (parser.instructionType() == InstructionType::L_INSTRUCTION) {
            if (g_symbol_map.find(parser.symbol()) != g_symbol_map.end())
                throw std::runtime_error("Too many label definition: " +
                                         parser.symbol());

            std::cout << current_line << ": " << current_line_number
                      << std::endl;
            g_symbol_map[parser.symbol()] = current_line_number;
        } else {
            current_line_number++;
        }
    }

    parser.reset();
    std::cout << std::endl;
    std::cout << "[SECOND ROUND]: " << std::endl;

    while (parser.hasMoreLines()) {
        auto current_line = parser.advance();
        if (parser.instructionType() == InstructionType::A_INSTRUCTION) {
            size_t num;
            if (is_numeric(parser.symbol())) {
                std::cout << current_line << std::endl;
                num = std::stoi(parser.symbol());
            } else {
                if (g_symbol_map.find(parser.symbol()) != g_symbol_map.end()) {
                    std::cout << current_line << ": [" << parser.symbol()
                              << "] = " << g_symbol_map[parser.symbol()]
                              << std::endl;
                    num = g_symbol_map[parser.symbol()];
                } else {
                    g_symbol_map[parser.symbol()] = a_symbol_index;
                    num = a_symbol_index;
                    a_symbol_index++;

                    std::cout << current_line << ": Add [" << parser.symbol()
                              << "] = " << g_symbol_map[parser.symbol()]
                              << std::endl;
                }
            }
            std::cout << std::bitset<16>(num).to_string() << std::endl;
            output_stream << std::bitset<16>(num).to_string() << "\n";
        } else if (parser.instructionType() == InstructionType::C_INSTRUCTION) {
            std::cout << current_line << ": comp[" << parser.comp()
                      << "], dest[" << parser.dest() << "], jump["
                      << parser.jump() << "]" << std::endl;

            std::cout << "111" << comp(parser.comp()) << dest(parser.dest())
                      << jump(parser.jump()) << std::endl;

            output_stream << "111" << comp(parser.comp()) << dest(parser.dest())
                          << jump(parser.jump()) << "\n";
        }
    }
    output_stream.close();
}

int main(int argc, char *argv[]) {
    if (argc < 2) {
        std::cerr << "Usage: " << argv[0] << " <input.asm> [output.hack]"
                  << std::endl;
        return 1;
    }
    std::string input_file = argv[1];
    std::string output_file;
    if (argc >= 3) {
        output_file = argv[2];
    } else {
        size_t dot_pos = input_file.find_last_of('.');
        if (dot_pos != std::string::npos) {
            output_file = input_file.substr(0, dot_pos) + ".hack";
        } else {
            output_file = input_file + ".hack";
        }
    }
    assemble(input_file, output_file);
}
