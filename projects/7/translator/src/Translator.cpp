#include "CodeWriter.hpp"
#include "Parser.hpp"
#include <iostream>
#include <stdexcept>
#include <string>

void translate(const std::string &input_file, const std::string &output_file) {

    Parser parser(input_file);
    CodeWriter code_writer(output_file);

    while (parser.hasMoreLines()) {
        auto current_line = parser.advance();
        code_writer.write("// " + current_line);
        std::cout << current_line << std::endl;
        std::cout << "command_type[" << to_string(parser.commandType())
                  << "], arg1[" << parser.arg1() << "], arg2[" << parser.arg2()
                  << "]" << std::endl;

        switch (parser.commandType()) {
        case CommandType::C_ARITHMETIC:
            code_writer.writeArithmetic(parser.arg1());
            break;
        case CommandType::C_PUSH:
        case CommandType::C_POP:
            code_writer.writePushPop(parser.commandType(), parser.arg1(),
                                     std::stoi(parser.arg2()));
            break;
        default:
            throw std::invalid_argument("Invalid command: " + current_line);
        }
    }

    code_writer.close();
}

int main(int argc, char *argv[]) {
    if (argc < 2) {
        std::cerr << "Usage: " << argv[0] << " <input.vm> [output.asm]"
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
            output_file = input_file.substr(0, dot_pos) + ".asm";
        } else {
            output_file = input_file + ".asm";
        }
    }
    translate(input_file, output_file);
}
