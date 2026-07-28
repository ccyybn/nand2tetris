#include "vm_writer.hpp"

#include <iostream>

VMWriter::VMWriter(const std::string& output_file) {
    out_.open(output_file);
    if (!out_.is_open()) {
        throw std::runtime_error("Failed to open output file: " + output_file);
    }
}

void VMWriter::writePush(SEGMENT segment, size_t index) { out_ << "push " << segmentToString(segment) << " " << index << "\n"; }

void VMWriter::writePop(SEGMENT segment, size_t index) { out_ << "pop " << segmentToString(segment) << " " << index << "\n"; }

void VMWriter::writeArithmetic(COMMAND command) { out_ << commandToString(command) << "\n"; }

void VMWriter::writeLabel(const std::string& label) { out_ << "label " << label << "\n"; }

void VMWriter::writeGoto(const std::string& label) { out_ << "goto " << label << "\n"; }

void VMWriter::writeIf(const std::string& label) { out_ << "if-goto " << label << "\n"; }

void VMWriter::writeCall(const std::string& name, size_t nArgs) { out_ << "call " << name << " " << nArgs << "\n"; }

void VMWriter::writeFunction(const std::string& name, size_t nVars) { out_ << "function " << name << " " << nVars << "\n"; }

void VMWriter::writeReturn() { out_ << "return\n"; }
