#include <filesystem>
#include <format>
#include <fstream>
#include <iostream>
#include <stdexcept>
#include <string>
#include <vector>

#include "compilation_engine.hpp"
#include "tokenizer.hpp"

void toTokensFile(const std::string& input_file) {
    std::filesystem::path input_path(input_file);
    std::string output_path = input_path.replace_extension("").generic_string() + "T_.xml";

    std::cout << output_path << std::endl;
    std::ofstream output_file(output_path);
    if (!output_file.is_open()) {
        throw std::runtime_error(std::format("Cannot open output file: {}", output_path));
    }
    Tokenizer tokenizer(input_file);
    output_file << "<tokens>\n";
    while (tokenizer.hasMoreTokens()) {
        tokenizer.advance();
        tokenizer.printXML(output_file);
    }
    output_file << "</tokens>\n";
    output_file.close();
}

void toStructureFile(const std::string& input_file) {
    std::filesystem::path input_path(input_file);
    std::string output_path = input_path.replace_extension("").generic_string() + "_.xml";
    std::cout << output_path << std::endl;

    Tokenizer tokenizer(input_file);
    CompilationEngine engine(tokenizer, output_path);

    engine.compileClass();
    engine.close();
}

void compile(const std::vector<std::string>& input_files) {
    for (const std::string& input_file : input_files) {
        // toTokensFile(input_file);
        toStructureFile(input_file);
    }
}

int main(int argc, char* argv[]) {
    if (argc < 2) {
        std::cerr << "Usage: " << argv[0] << " <input file or path>" << std::endl;
        return 1;
    }
    std::string input_argument = argv[1];

    std::vector<std::string> input_files;
    std::filesystem::path input_path(input_argument);

    if (!std::filesystem::exists(input_path)) {
        std::cerr << "Path does not exist" << std::endl;
        exit(1);
    }

    if (std::filesystem::is_regular_file(input_path)) {
        input_files.push_back(input_argument);
    } else if (std::filesystem::is_directory(input_path)) {
        input_path = input_path.filename().empty() ? input_path.parent_path() : input_path;
        for (const auto& entry : std::filesystem::directory_iterator(input_path)) {
            if (entry.is_regular_file() && entry.path().extension() == ".jack") {
                input_files.push_back(entry.path());
            }
        }
    } else {
        std::cerr << "Input not supported" << std::endl;
        exit(1);
    }

    compile(input_files);
}
