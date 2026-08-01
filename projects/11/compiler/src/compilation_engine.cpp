#include "compilation_engine.hpp"

#include <cstddef>
#include <cstdint>
#include <format>
#include <iostream>
#include <optional>
#include <stdexcept>
#include <string_view>

#include "tokenizer.hpp"

CompilationEngine::CompilationEngine(Tokenizer tokenizer, const std::string& output_file)
    : tokenizer_(tokenizer), output_file_(output_file), vm_writer_(output_file), symbol_table_class_("Class"), symbol_table_routine_("Routine") {
    // out_ = std::ofstream(output_file, std::ios::trunc);
    // if (!out_.is_open()) {
    //     throw std::runtime_error("Cannot open output file: " + output_file);
    // }
}

void CompilationEngine::close() { vm_writer_.close(); }

void CompilationEngine::process(const Token& token, bool is_final = false) {
    if (tokenizer_.peek().match(token)) {
        std::cout << std::format("processing {}", tokenizer_.peek().lexeme) << std::endl;
        // tokenizer_.printXML(out_);
    } else {
        throw std::runtime_error(
            std::format("[{}] syntax error, expect {} instead of {}", tokenizer_.get_current_index(), token.toString(), tokenizer_.peek().lexeme));
    }
    if (is_final) {
        if (tokenizer_.hasMoreTokens()) {
            throw std::runtime_error(std::format("token processing not completed: {}", tokenizer_.peek(1).lexeme));
        }
    } else {
        tokenizer_.advance();
    }
};

const std::string& CompilationEngine::processIdentifier() { return processIdentifier(tokenizer_.identifier()); }

const std::string& CompilationEngine::processIdentifier(const std::string& identifier) {
    process({.type = TokenType::IDENTIFIER, .identifier = identifier});
    return identifier;
}

Keyword CompilationEngine::processKeyword() { return processKeyword(tokenizer_.keyword()); }

Keyword CompilationEngine::processKeyword(Keyword keyword) {
    process({.type = TokenType::KEYWORD, .keyword = keyword});
    return keyword;
}

char CompilationEngine::processSymbol() { return processSymbol(tokenizer_.symbol()); }

char CompilationEngine::processSymbol(char symbol) {
    process({.type = TokenType::SYMBOL, .symbol = symbol});
    return symbol;
}

int16_t CompilationEngine::processInteger() { return processInteger(tokenizer_.intVal()); }

int16_t CompilationEngine::processInteger(int16_t int_val) {
    process({.type = TokenType::INIT_CONST, .int_val = int_val});
    return int_val;
}

const std::string& CompilationEngine::processString() { return processString(tokenizer_.stringVal()); }

const std::string& CompilationEngine::processString(const std::string& string_val) {
    process({.type = TokenType::STRING_CONST, .string_val = string_val});
    return string_val;
}

const std::string_view CompilationEngine::processType() {
    if (tokenizer_.keyword() == Keyword::K_INT) {
        return to_string(processKeyword());
    } else if (tokenizer_.keyword() == Keyword::K_CHAR) {
        return to_string(processKeyword());
    } else if (tokenizer_.keyword() == Keyword::K_BOOLEAN) {
        return to_string(processKeyword());
    } else {
        // className
        return processIdentifier();
    }
}
void CompilationEngine::processSubroutineCall() {
    if (tokenizer_.peek(1).symbol == '(') {
        const auto& subroutine_name = processIdentifier();
        // TODO: checking subroutine_name is a method name instead of a function name.
        vm_writer_.writePush(SEGMENT::POINTER, 0);
        processSymbol('(');
        size_t nargs = compileExpressionList();
        processSymbol(')');
        vm_writer_.writeCall(std::format("{}.{}", class_name_, subroutine_name), nargs + 1);
    } else if (tokenizer_.peek(1).symbol == '.') {
        const auto& var_name = processIdentifier();
        auto seg = lookUpIdentifier(var_name);
        if (seg) {
            vm_writer_.writePush(seg->segment, seg->index);
        }
        processSymbol('.');
        const auto& subroutine_name = processIdentifier();
        processSymbol('(');
        size_t nargs = compileExpressionList();
        processSymbol(')');

        if (seg) {
            vm_writer_.writeCall(std::format("{}.{}", seg->type, subroutine_name), nargs + 1);
        } else {
            vm_writer_.writeCall(std::format("{}.{}", var_name, subroutine_name), nargs);
        }
    } else {
        throw std::runtime_error(std::format("subroutine call expect '(' or '.', but {}", tokenizer_.peek(1).lexeme));
    }
}

void CompilationEngine::compileClass() {
    tokenizer_.advance();
    processKeyword(Keyword::K_CLASS);
    class_name_ = processIdentifier();
    processSymbol('{');

    while (tokenizer_.keyword() == Keyword::K_STATIC || tokenizer_.keyword() == Keyword::K_FIELD) {
        compileClassVarDec();
    }
    while (tokenizer_.keyword() == Keyword::K_CONSTRUCTOR || tokenizer_.keyword() == Keyword::K_FUNCTION ||
           tokenizer_.keyword() == Keyword::K_METHOD) {
        compileSubroutine();
    }
    process({.type = TokenType::SYMBOL, .symbol = '}'}, true);
}

void CompilationEngine::compileClassVarDec() {
    KIND kind;
    if (tokenizer_.keyword() == Keyword::K_STATIC) {
        processKeyword();
        kind = KIND::STATIC;
    } else if (tokenizer_.keyword() == Keyword::K_FIELD) {
        processKeyword();
        kind = KIND::FIELD;
    } else {
        throw std::runtime_error("");
    }

    std::string_view type = processType();
    // varName
    const std::string& name = processIdentifier();
    symbol_table_class_.define(name, type, kind);

    while (tokenizer_.symbol() == ',') {
        processSymbol(',');
        symbol_table_class_.define(processIdentifier(), type, kind);
    }
    processSymbol(';');
}

void CompilationEngine::compileSubroutine() {
    // if (tokenizer_.keyword() == Keyword::K_CONSTRUCTOR) {
    //     processKeyword();
    // } else if (tokenizer_.keyword() == Keyword::K_FUNCTION) {
    //     processKeyword();
    // } else if (tokenizer_.keyword() == Keyword::K_METHOD) {
    //     processKeyword();
    // } else {
    //     throw std::runtime_error("");
    // }
    symbol_table_routine_.reset();
    Keyword subroutine_type = processKeyword();
    if (subroutine_type == Keyword::K_METHOD) {
        symbol_table_routine_.define("this", class_name_, KIND::ARG);
    }

    if (tokenizer_.keyword() == Keyword::K_VOID) {
        processKeyword();
    } else {
        processType();
    }

    // subroutineName
    const std::string& subroutine_name = processIdentifier();
    processSymbol('(');
    compileParameterList();
    processSymbol(')');

    compileSubroutineBody(subroutine_name, subroutine_type);
}

void CompilationEngine::compileParameterList() {
    if (tokenizer_.symbol() != ')') {
        const std::string_view type = processType();
        const std::string& name = processIdentifier();

        symbol_table_routine_.define(name, type, KIND::ARG);

        while (tokenizer_.symbol() == ',') {
            processSymbol(',');
            const std::string_view type = processType();
            const std::string& name = processIdentifier();
            symbol_table_routine_.define(name, type, KIND::ARG);
        }
    }
}

void CompilationEngine::compileSubroutineBody(const std::string& subroutine_name, Keyword subroutine_type) {
    processSymbol('{');
    while (tokenizer_.keyword() == Keyword::K_VAR) {
        compileVarDec();
    }
    vm_writer_.writeFunction(std::format("{}.{}", class_name_, subroutine_name), symbol_table_routine_.varCount(KIND::VAR));
    if (subroutine_type == Keyword::K_METHOD) {
        vm_writer_.writePush(SEGMENT::ARGUMENT, 0);
        vm_writer_.writePop(SEGMENT::POINTER, 0);
    } else if (subroutine_type == Keyword::K_CONSTRUCTOR) {
        vm_writer_.writePush(SEGMENT::CONSTANT, symbol_table_class_.varCount(KIND::FIELD));
        vm_writer_.writeCall("Memory.alloc", 1);
        vm_writer_.writePop(SEGMENT::POINTER, 0);
    }
    compileStatements();
    processSymbol('}');
}

void CompilationEngine::compileVarDec() {
    processKeyword(Keyword::K_VAR);
    const std::string_view type = processType();
    const std::string& name = processIdentifier();
    symbol_table_routine_.define(name, type, KIND::VAR);

    while (tokenizer_.symbol() == ',') {
        processSymbol(',');
        const std::string& name = processIdentifier();
        symbol_table_routine_.define(name, type, KIND::VAR);
    }
    processSymbol(';');
}

void CompilationEngine::compileStatements() {
    while (tokenizer_.symbol() != '}') {
        switch (tokenizer_.keyword()) {
            case Keyword::K_LET:
                compileLet();
                break;
            case Keyword::K_IF:
                compileIf();
                break;
            case Keyword::K_WHILE:
                compileWhile();
                break;
            case Keyword::K_DO:
                compileDo();
                break;
            case Keyword::K_RETURN:
                compileReturn();
                break;
            default:
                throw std::runtime_error(std::format("unexpected statement {}", tokenizer_.peek().lexeme));
                break;
        }
    }
}

std::optional<SymbolSegment> CompilationEngine::lookUpIdentifier(const std::string& identifier) {
    SymbolTable* table = &symbol_table_routine_;
    KIND kind = symbol_table_routine_.kindOf(identifier);
    if (kind == KIND::NONE) {
        table = &symbol_table_class_;
        kind = symbol_table_class_.kindOf(identifier);
        if (kind == KIND::NONE) {
            return std::nullopt;
        }
    }

    SEGMENT segment;
    if (kind == KIND::STATIC) {
        segment = SEGMENT::STATIC;
    } else if (kind == KIND::FIELD) {
        segment = SEGMENT::THIS;
    } else if (kind == KIND::VAR) {
        segment = SEGMENT::LOCAL;
    } else if (kind == KIND::ARG) {
        segment = SEGMENT::ARGUMENT;
    } else {
        throw std::runtime_error(std::format("unexpected kind: {}, identifier: {}", to_string(kind), identifier));
    }

    return SymbolSegment{segment, table->indexOf(identifier), table->typeOf(identifier)};
}

void CompilationEngine::compileLet() {
    processKeyword(Keyword::K_LET);
    const std::string& var_name = processIdentifier();
    auto seg = lookUpIdentifier(var_name);
    bool is_array = tokenizer_.symbol() == '[';
    if (is_array) {
        vm_writer_.writePush(seg->segment, seg->index);
        processSymbol('[');
        compileExpression();
        processSymbol(']');
        vm_writer_.writeArithmetic(COMMAND::ADD);
    }

    processSymbol('=');
    compileExpression();
    processSymbol(';');
    if (is_array) {
        vm_writer_.writePop(SEGMENT::TEMP, 0);
        vm_writer_.writePop(SEGMENT::POINTER, 1);
        vm_writer_.writePush(SEGMENT::TEMP, 0);
        vm_writer_.writePop(SEGMENT::THAT, 0);
    } else {
        vm_writer_.writePop(seg->segment, seg->index);
    }
}

void CompilationEngine::compileIf() {
    const std::string elseLabel = nextLabel();
    const std::string endLabel = nextLabel();

    processKeyword(Keyword::K_IF);
    processSymbol('(');
    compileExpression();
    processSymbol(')');
    processSymbol('{');
    vm_writer_.writeArithmetic(COMMAND::NOT);
    vm_writer_.writeIf(elseLabel);
    compileStatements();
    vm_writer_.writeGoto(endLabel);
    processSymbol('}');
    vm_writer_.writeLabel(elseLabel);
    if (tokenizer_.keyword() == Keyword::K_ELSE) {
        processKeyword(Keyword::K_ELSE);
        processSymbol('{');
        compileStatements();
        processSymbol('}');
    }
    vm_writer_.writeLabel(endLabel);
}

void CompilationEngine::compileWhile() {
    const std::string loopLabel = nextLabel();
    const std::string endLabel = nextLabel();

    processKeyword(Keyword::K_WHILE);
    processSymbol('(');
    vm_writer_.writeLabel(loopLabel);
    compileExpression();
    processSymbol(')');
    processSymbol('{');
    vm_writer_.writeArithmetic(COMMAND::NOT);
    vm_writer_.writeIf(endLabel);
    compileStatements();
    vm_writer_.writeGoto(loopLabel);
    processSymbol('}');
    vm_writer_.writeLabel(endLabel);
}

void CompilationEngine::compileDo() {
    processKeyword(Keyword::K_DO);
    processSubroutineCall();
    processSymbol(';');
    vm_writer_.writePop(SEGMENT::TEMP, 0);
}

void CompilationEngine::compileReturn() {
    processKeyword(Keyword::K_RETURN);
    if (tokenizer_.symbol() == ';') {
        processSymbol(';');
        vm_writer_.writePush(SEGMENT::CONSTANT, 0);
    } else {
        compileExpression();
        processSymbol(';');
    }
    vm_writer_.writeReturn();
}

void CompilationEngine::compileExpression() {
    compileTerm();
    while (Tokenizer::all_ops.contains(tokenizer_.symbol())) {
        char symbol = processSymbol();
        compileTerm();
        if (symbol == '+') {
            vm_writer_.writeArithmetic(COMMAND::ADD);
        } else if (symbol == '-') {
            vm_writer_.writeArithmetic(COMMAND::SUB);
        } else if (symbol == '*') {
            vm_writer_.writeCall("Math.multiply", 2);
        } else if (symbol == '/') {
            vm_writer_.writeCall("Math.divide", 2);
        } else if (symbol == '&') {
            vm_writer_.writeArithmetic(COMMAND::AND);
        } else if (symbol == '|') {
            vm_writer_.writeArithmetic(COMMAND::OR);
        } else if (symbol == '<') {
            vm_writer_.writeArithmetic(COMMAND::LT);
        } else if (symbol == '>') {
            vm_writer_.writeArithmetic(COMMAND::GT);
        } else if (symbol == '=') {
            vm_writer_.writeArithmetic(COMMAND::EQ);
        } else {
            throw std::runtime_error(std::format("unexpected operation {}", symbol));
        }
    }
}

void CompilationEngine::compileTerm() {
    if (tokenizer_.tokenType() == TokenType::INIT_CONST) {
        int16_t int_val = processInteger();
        vm_writer_.writePush(SEGMENT::CONSTANT, int_val);
    } else if (tokenizer_.tokenType() == TokenType::STRING_CONST) {
        const std::string& string_val = processString();
        vm_writer_.writePush(SEGMENT::CONSTANT, string_val.length());
        vm_writer_.writeCall("String.new", 1);
        for (const char& ch : string_val) {
            vm_writer_.writePush(SEGMENT::CONSTANT, ch);
            vm_writer_.writeCall("String.appendChar", 2);
        }
    } else if (Tokenizer::all_constant_keywords.contains(tokenizer_.keyword())) {
        Keyword keyword = processKeyword();
        if (keyword == Keyword::K_TRUE) {
            vm_writer_.writePush(SEGMENT::CONSTANT, 0);
            vm_writer_.writeArithmetic(COMMAND::NOT);
        } else if (keyword == Keyword::K_FALSE) {
            vm_writer_.writePush(SEGMENT::CONSTANT, 0);
        } else if (keyword == Keyword::K_NULL) {
            vm_writer_.writePush(SEGMENT::CONSTANT, 0);
        } else if (keyword == Keyword::K_THIS) {
            vm_writer_.writePush(SEGMENT::POINTER, 0);
        } else {
            throw std::runtime_error(std::format("unexpected constant keyword {}", to_string(keyword)));
        }
    } else {
        if (tokenizer_.symbol() == '(') {
            processSymbol('(');
            compileExpression();
            processSymbol(')');
        } else if (tokenizer_.symbol() == '-' || tokenizer_.symbol() == '~') {
            char symbol = processSymbol();
            compileTerm();
            if (symbol == '-') {
                vm_writer_.writeArithmetic(COMMAND::NEG);
            } else {
                vm_writer_.writeArithmetic(COMMAND::NOT);
            }
        } else if (tokenizer_.peek(1).symbol == '[') {
            auto& var_name = processIdentifier();
            processSymbol('[');
            compileExpression();
            processSymbol(']');
            auto seg = lookUpIdentifier(var_name);
            vm_writer_.writePush(seg->segment, seg->index);
            vm_writer_.writeArithmetic(COMMAND::ADD);
            vm_writer_.writePop(SEGMENT::POINTER, 1);
            vm_writer_.writePush(SEGMENT::THAT, 0);
        } else if (tokenizer_.peek(1).symbol == '(' || tokenizer_.peek(1).symbol == '.') {
            processSubroutineCall();
        } else if (tokenizer_.tokenType() == TokenType::IDENTIFIER) {
            auto& identifier = processIdentifier();
            auto seg = lookUpIdentifier(identifier);
            vm_writer_.writePush(seg->segment, seg->index);
        } else {
            throw std::runtime_error(std::format("unexpected term pattern {}", tokenizer_.peek().lexeme));
        }
    }
}

size_t CompilationEngine::compileExpressionList() {
    size_t size = 0;
    if (tokenizer_.peek().symbol != ')') {
        compileExpression();
        size++;
        while (tokenizer_.symbol() == ',') {
            processSymbol(',');
            compileExpression();
            size++;
        }
    }
    return size;
}
