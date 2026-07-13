#include "Parser.hpp"
#include <cstdint>
#include <fstream>

class CodeWriter {
  private:
    std::ofstream ofstream_;
    void binaryOP(const std::string &command);
    void unaryOP(const std::string &command);
    void compareOP(const std::string &command);
    void accessSegment(const std::string &command, int16_t index);
    inline void increaseSP() {
        write("@SP");
        write("M=M+1");
    };

  public:
    CodeWriter(const std::string &output_file);
    inline void write(const std::string &str) { ofstream_ << str << "\n"; };
    void writeArithmetic(const std::string &command);
    void writePushPop(CommandType command, const std::string &segment,
                      int16_t index);
    void close();
};
