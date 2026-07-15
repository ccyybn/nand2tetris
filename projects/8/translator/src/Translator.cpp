#include "CodeWriter.hpp"
#include "Parser.hpp"
#include <filesystem>
#include <iostream>
#include <stdexcept>
#include <string>
#include <vector>

void translate(const std::vector<std::string> &input_files,
               const std::string &output_file) {

    CodeWriter code_writer(output_file);

    for (const auto &input_file : input_files) {
        Parser parser(input_file);
        code_writer.setFileName(input_file);

        while (parser.hasMoreLines()) {
            auto current_line = parser.advance();
            code_writer.write("// " + current_line);
            std::cout << current_line << std::endl;
            std::cout << "command_type[" << to_string(parser.commandType())
                      << "], arg1[" << parser.arg1() << "], arg2["
                      << parser.arg2() << "]" << std::endl;

            switch (parser.commandType()) {
            case CommandType::C_ARITHMETIC:
                code_writer.writeArithmetic(parser.arg1());
                break;
            case CommandType::C_PUSH:
            case CommandType::C_POP:
                code_writer.writePushPop(parser.commandType(), parser.arg1(),
                                         std::stoi(parser.arg2()));
                break;
            case CommandType::C_LABEL:
                code_writer.writeLabel(parser.arg1());
                break;
            case CommandType::C_GOTO:
                code_writer.writeGoto(parser.arg1());
                break;
            case CommandType::C_IF:
                code_writer.writeIf(parser.arg1());
                break;
            case CommandType::C_FUNCTION:
                code_writer.writeFunction(parser.arg1(),
                                          std::stoi(parser.arg2()));
                break;
            case CommandType::C_CALL:
                code_writer.writeCall(parser.arg1(), std::stoi(parser.arg2()));
                break;
            case CommandType::C_RETURN:
                code_writer.writeReturn();
                break;
            default:
                throw std::invalid_argument("<Translator> Invalid command: " +
                                            current_line);
            }
        }
    }

    code_writer.close();
}

int main(int argc, char *argv[]) {
    if (argc < 2) {
        std::cerr << "Usage: " << argv[0]
                  << " <input file or path> [output.asm]" << std::endl;
        return 1;
    }
    std::string input_argument = argv[1];
    std::string output_file;

    std::vector<std::string> input_files;
    std::filesystem::path input_path(input_argument);

    if (!std::filesystem::exists(input_path)) {
        std::cerr << "Path does not exist" << std::endl;
        exit(1);
    }

    if (std::filesystem::is_regular_file(input_path)) {
        input_files.push_back(input_argument);
    } else if (std::filesystem::is_directory(input_path)) {
        input_path = input_path.filename().empty() ? input_path.parent_path()
                                                   : input_path;
        for (const auto &entry :
             std::filesystem::directory_iterator(input_path)) {
            if (entry.is_regular_file() && entry.path().extension() == ".vm") {
                input_files.push_back(entry.path());
            }
        }
    } else {
        std::cerr << "Input not supported" << std::endl;
        exit(1);
    }

    if (argc >= 3) {
        output_file = argv[2];
    } else {
        if (std::filesystem::is_directory(input_path)) {
            output_file =
                input_argument + "/" + std::string(input_path.stem()) + ".asm";
        } else {
            output_file = input_path.replace_extension(".asm");
        }
    }

    translate(input_files, output_file);
}
