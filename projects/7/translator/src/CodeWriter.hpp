#include "Parser.hpp"
#include <cstdint>
#include <fstream>

class CodeWriter {
  private:
    std::ofstream ofstream_;
    void binary_op(const std::string &command);
    void unary_op(const std::string &command);
    void compare_op(const std::string &command);

  public:
    CodeWriter(const std::string &output_file);
    void write(const std::string &str);
    void writeArithmetic(const std::string &command);
    void writePushPop(CommandType command, const std::string &segment,
                      int16_t index);
    void close();
};
