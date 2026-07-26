#include <cstdint>
#include <fstream>

#include "tokenizer.hpp"

class CompilationEngine {
   private:
    Tokenizer tokenizer_;
    std::string output_file_;
    std::ofstream out_;
    void compileClassVarDec();
    void compileSubroutine();
    void compileParameterList();
    void compileSubroutineBody();
    void compileVarDec();
    void compileStatements();
    void compileLet();
    void compileIf();
    void compileWhile();
    void compileDo();
    void compileReturn();
    void compileExpression();
    void compileTerm();
    void compileExpressionList();
    void process(const Token& token, bool is_final);
    void processIdentifier(const std::string& identifier);
    void processKeyword(Keyword keyword);
    void processSymbol(char symbol);
    void processInteger(int16_t int_val);
    void processString(const std::string& string_val);
    void processType();
    void processSubroutineCall();

   public:
    CompilationEngine(Tokenizer tokenizer, const std::string& output_file);

    void compileClass();
    void close();
    void write(const std::string& str) { out_ << str << "\n"; }
};
