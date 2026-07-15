#include "Parser.hpp"
#include <cstdint>
#include <fstream>
#include <sstream>
#include <string>
#include <unordered_map>

class CodeWriter {
  private:
    std::ofstream ofstream_;
    std::stringstream buffer_;
    std::string file_name_;
    int16_t compare_counter = 0;
    std::string function_name_ = "null";
    std::unordered_map<std::string, int16_t> call_counter_;
    bool has_sys_init_ = false;
    void binaryOP(const std::string &command);
    void unaryOP(const std::string &command);
    void compareOP(const std::string &command);
    void accessAbsoluteSegment(const std::string &command, int16_t index);
    void accessRelativeSegment(const std::string &command, int16_t index,
                               const std::string &store_at);
    inline void incrSP() {
        write("@SP");
        write("M=M+1");
    };

    inline void pushFrame(const std::string &name,
                          const std::string &value_at = "M");

    inline void restoreFrame(const std::string &name, int16_t offset);

  public:
    CodeWriter(const std::string &output_file);
    inline void write(const std::string &str) { buffer_ << str << "\n"; };
    inline void writeFile(const std::string &str) { ofstream_ << str << "\n"; };
    void setFileName(const std::string &file_name);
    void writeArithmetic(const std::string &command);
    void writePushPop(CommandType command, const std::string &segment,
                      int16_t index);
    void writeLabel(const std::string &label);
    void writeGoto(const std::string &label);
    void writeIf(const std::string &label);
    void writeFunction(const std::string &function_name, int16_t nargs);
    void writeCall(const std::string &function_name, int16_t nargs);
    void writeReturn();
    void close();
};
