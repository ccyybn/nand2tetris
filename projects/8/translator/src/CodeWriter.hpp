#include <cstdint>
#include <fstream>
#include <sstream>
#include <string>
#include <unordered_map>

#include "Parser.hpp"

class CodeWriter {
   private:
    std::ofstream ofstream_;
    std::stringstream buffer_;
    std::string file_name_;
    int16_t compare_counter = 0;
    std::string function_name_ = "null";
    std::unordered_map<std::string, int16_t> call_counter_;
    bool has_sys_init_ = false;
    void binaryOP(const std::string& command);
    void unaryOP(const std::string& command);
    void compareOP(const std::string& command);
    void accessAbsoluteSegment(const std::string& command, int16_t index);
    void accessRelativeSegment(const std::string& command, int16_t index, const std::string& store_at);
    void writeHelperSubroutines();
    inline void incrSP() {
        write("@SP");
        write("M=M+1");
    };

    inline void pushFrame(const std::string& name, const std::string& value_at = "M");

    inline void restoreFrame(const std::string& name, int16_t offset);

    void loadConst(const std::string& target, int16_t val);
    void loadConst(const std::string& target, const std::string& symbol);
    void toRegister(const std::string& dst, const std::string& src);
    void toPointer(const std::string& dst, const std::string& src);
    void fromRegister(const std::string& dst, const std::string& src);
    void assign(const std::string& dst, const std::string& src);
    void add(const std::string& dst, const std::string& src, size_t val);
    void sub(const std::string& dst, const std::string& src, size_t val);
    void sub(const std::string& dst, const std::string& src, const std::string& val);
    void pushD();
    void popD();
    void push(const std::string& src);
    void jmp(const std::string& target);
    void jmpBy(const std::string& target);
    void jmpCond(const std::string& target, const std::string& cond);

   public:
    CodeWriter(const std::string& output_file);
    inline void write(const std::string& str) { buffer_ << str << "\n"; };
    inline void writeFile(const std::string& str) { ofstream_ << str << "\n"; };
    void setFileName(const std::string& file_name);
    void writeArithmetic(const std::string& command);
    void writePushPop(CommandType command, const std::string& segment, int16_t index);
    void writeLabel(const std::string& label);
    void writeGoto(const std::string& label);
    void writeIf(const std::string& label);
    void writeFunction(const std::string& function_name, int16_t nargs);
    void writeCall(const std::string& function_name, int16_t nargs);
    void writeReturn();
    void close();
};
