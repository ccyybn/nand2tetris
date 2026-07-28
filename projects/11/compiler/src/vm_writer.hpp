#include <fstream>

enum class SEGMENT { CONSTANT, ARGUMENT, LOCAL, STATIC, THIS, THAT, POINTER, TEMP };

enum class COMMAND { ADD, SUB, NEG, EQ, GT, LT, AND, OR, NOT };

class VMWriter {
   private:
    std::ofstream out_;

    static std::string segmentToString(SEGMENT segment) {
        switch (segment) {
            case SEGMENT::CONSTANT:
                return "constant";
            case SEGMENT::ARGUMENT:
                return "argument";
            case SEGMENT::LOCAL:
                return "local";
            case SEGMENT::STATIC:
                return "static";
            case SEGMENT::THIS:
                return "this";
            case SEGMENT::THAT:
                return "that";
            case SEGMENT::POINTER:
                return "pointer";
            case SEGMENT::TEMP:
                return "temp";
            default:
                throw std::invalid_argument("Unknown SEGMENT");
        }
    }

    static std::string commandToString(COMMAND command) {
        switch (command) {
            case COMMAND::ADD:
                return "add";
            case COMMAND::SUB:
                return "sub";
            case COMMAND::NEG:
                return "neg";
            case COMMAND::EQ:
                return "eq";
            case COMMAND::GT:
                return "gt";
            case COMMAND::LT:
                return "lt";
            case COMMAND::AND:
                return "and";
            case COMMAND::OR:
                return "or";
            case COMMAND::NOT:
                return "not";
            default:
                throw std::invalid_argument("Unknown COMMAND");
        }
    }

   public:
    VMWriter(const std::string& output_file);
    void writePush(SEGMENT segment, size_t index);
    void writePop(SEGMENT segment, size_t index);
    void writeArithmetic(COMMAND command);
    void writeLabel(const std::string& label);
    void writeGoto(const std::string& label);
    void writeIf(const std::string& label);
    void writeCall(const std::string& name, size_t nArgs);
    void writeFunction(const std::string& name, size_t nVars);
    void writeReturn();
    void close() { out_.close(); }
};
