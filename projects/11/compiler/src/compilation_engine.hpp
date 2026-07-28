#include <cstddef>
#include <cstdint>
#include <format>
#include <optional>
#include <string>

#include "symbol_table.hpp"
#include "tokenizer.hpp"
#include "vm_writer.hpp"

struct SymbolSegment {
    SEGMENT segment;
    size_t index;
    const std::string& type;
};

class CompilationEngine {
   private:
    Tokenizer tokenizer_;
    std::string output_file_;
    VMWriter vm_writer_;
    SymbolTable symbol_table_class_;
    SymbolTable symbol_table_routine_;
    std::string class_name_;
    size_t label_count_;
    void compileClassVarDec();
    void compileSubroutine();
    void compileParameterList();
    void compileSubroutineBody(const std::string& subroutine_name, Keyword subroutine_type);
    void compileVarDec();
    void compileStatements();
    void compileLet();
    void compileIf();
    void compileWhile();
    void compileDo();
    void compileReturn();
    void compileExpression();
    void compileTerm();
    size_t compileExpressionList();
    void process(const Token& token, bool is_final);
    const std::string& processIdentifier();
    const std::string& processIdentifier(const std::string& identifier);
    Keyword processKeyword();
    Keyword processKeyword(Keyword keyword);
    char processSymbol();
    char processSymbol(char symbol);
    int16_t processInteger();
    int16_t processInteger(int16_t int_val);
    const std::string& processString();
    const std::string& processString(const std::string& string_val);
    const std::string_view processType();
    void processSubroutineCall();
    std::optional<SymbolSegment> lookUpIdentifier(const std::string& identifier);
    std::string nextLabel() { return std::format("L{}", label_count_++); }

   public:
    CompilationEngine(Tokenizer tokenizer, const std::string& output_file);

    void compileClass();
    void close();
};
