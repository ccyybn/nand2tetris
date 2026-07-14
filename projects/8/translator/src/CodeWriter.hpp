#include "Parser.hpp"
#include <cstdint>
#include <fstream>
#include <string>

class CodeWriter {
  private:
    std::ofstream ofstream_;
    std::string file_name_;
    int16_t compare_counter = 0;
    std::string function_name_ = "main";
    void binaryOP(const std::string &command);
    void unaryOP(const std::string &command);
    void compareOP(const std::string &command);
    void accessAbsoluteSegment(const std::string &command, int16_t index);
    void accessRelativeSegment(const std::string &command, int16_t index,
                               const std::string &store_at);
    inline void increaseSP() {
        write("@SP");
        write("M=M+1");
    };

  public:
    CodeWriter(const std::string &output_file, const std::string &file_name);
    inline void write(const std::string &str) { ofstream_ << str << "\n"; };
    void writeArithmetic(const std::string &command);
    void writePushPop(CommandType command, const std::string &segment,
                      int16_t index);
    void writeLabel(const std::string &label);
    void writeGoto(const std::string &label);
    void writeIf(const std::string &label);
    void close();
};
