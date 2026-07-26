#include "compilation_engine.hpp"

#include <cstdint>
#include <iostream>
#include <stdexcept>

#include "tokenizer.hpp"

CompilationEngine::CompilationEngine(Tokenizer tokenizer, const std::string& output_file) : tokenizer_(tokenizer), output_file_(output_file) {
    out_ = std::ofstream(output_file, std::ios::trunc);
    if (!out_.is_open()) {
        throw std::runtime_error("Cannot open output file: " + output_file);
    }
}

void CompilationEngine::close() { out_.close(); }

void CompilationEngine::process(const Token& token, bool is_final = false) {
    if (tokenizer_.peek().match(token)) {
        std::cout << std::format("processing {}", tokenizer_.peek().lexeme) << std::endl;
        tokenizer_.printXML(out_);
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

void CompilationEngine::processIdentifier(const std::string& identifier) { process({.type = TokenType::IDENTIFIER, .identifier = identifier}); }

void CompilationEngine::processKeyword(Keyword keyword) { process({.type = TokenType::KEYWORD, .keyword = keyword}); }

void CompilationEngine::processSymbol(char symbol) { process({.type = TokenType::SYMBOL, .symbol = symbol}); }

void CompilationEngine::processInteger(int16_t int_val) { process({.type = TokenType::INIT_CONST, .int_val = int_val}); }

void CompilationEngine::processString(const std::string& string_val) { process({.type = TokenType::STRING_CONST, .string_val = string_val}); }

void CompilationEngine::processType() {
    if (tokenizer_.keyword() == Keyword::K_INT) {
        processKeyword(Keyword::K_INT);
    } else if (tokenizer_.keyword() == Keyword::K_CHAR) {
        processKeyword(Keyword::K_CHAR);
    } else if (tokenizer_.keyword() == Keyword::K_BOOLEAN) {
        processKeyword(Keyword::K_BOOLEAN);
    } else {
        // className
        processIdentifier(tokenizer_.identifier());
    }
}
void CompilationEngine::processSubroutineCall() {
    if (tokenizer_.peek(1).symbol == '(') {
        processIdentifier(tokenizer_.identifier());
        processSymbol('(');
        compileExpressionList();
        processSymbol(')');
    } else if (tokenizer_.peek(1).symbol == '.') {
        processIdentifier(tokenizer_.identifier());
        processSymbol('.');
        processIdentifier(tokenizer_.identifier());
        processSymbol('(');
        compileExpressionList();
        processSymbol(')');
    } else {
        throw std::runtime_error(std::format("subroutine call expect '(' or '.', but {}", tokenizer_.peek(1).lexeme));
    }
}

void CompilationEngine::compileClass() {
    tokenizer_.advance();
    write("<class>");
    processKeyword(Keyword::K_CLASS);
    processIdentifier(tokenizer_.identifier());
    processSymbol('{');
    while (tokenizer_.keyword() == Keyword::K_STATIC || tokenizer_.keyword() == Keyword::K_FIELD) {
        compileClassVarDec();
    }
    while (tokenizer_.keyword() == Keyword::K_CONSTRUCTOR || tokenizer_.keyword() == Keyword::K_FUNCTION ||
           tokenizer_.keyword() == Keyword::K_METHOD) {
        compileSubroutine();
    }
    process({.type = TokenType::SYMBOL, .symbol = '}'}, true);
    write("</class>");
}

void CompilationEngine::compileClassVarDec() {
    write("<classVarDec>");
    if (tokenizer_.keyword() == Keyword::K_STATIC) {
        processKeyword(Keyword::K_STATIC);
    } else if (tokenizer_.keyword() == Keyword::K_FIELD) {
        processKeyword(Keyword::K_FIELD);
    } else {
        throw std::runtime_error("");
    }

    processType();
    // varName
    processIdentifier(tokenizer_.identifier());

    while (tokenizer_.symbol() == ',') {
        processSymbol(',');
        processIdentifier(tokenizer_.identifier());
    }

    processSymbol(';');
    write("</classVarDec>");
}

void CompilationEngine::compileSubroutine() {
    write("<subroutineDec>");
    if (tokenizer_.keyword() == Keyword::K_CONSTRUCTOR) {
        processKeyword(Keyword::K_CONSTRUCTOR);
    } else if (tokenizer_.keyword() == Keyword::K_FUNCTION) {
        processKeyword(Keyword::K_FUNCTION);
    } else if (tokenizer_.keyword() == Keyword::K_METHOD) {
        processKeyword(Keyword::K_METHOD);
    } else {
        throw std::runtime_error("");
    }

    if (tokenizer_.keyword() == Keyword::K_VOID) {
        processKeyword(Keyword::K_VOID);
    } else {
        processType();
    }

    // subroutineName
    processIdentifier(tokenizer_.identifier());
    processSymbol('(');
    compileParameterList();
    processSymbol(')');

    compileSubroutineBody();
    write("</subroutineDec>");
}

void CompilationEngine::compileParameterList() {
    write("<parameterList>");
    if (tokenizer_.symbol() != ')') {
        processType();
        processIdentifier(tokenizer_.identifier());

        while (tokenizer_.symbol() == ',') {
            processSymbol(',');
            processType();
            processIdentifier(tokenizer_.identifier());
        }
    }
    write("</parameterList>");
}

void CompilationEngine::compileSubroutineBody() {
    write("<subroutineBody>");
    processSymbol('{');
    while (tokenizer_.keyword() == Keyword::K_VAR) {
        compileVarDec();
    }
    compileStatements();
    processSymbol('}');
    write("</subroutineBody>");
}

void CompilationEngine::compileVarDec() {
    write("<varDec>");
    processKeyword(Keyword::K_VAR);
    processType();
    processIdentifier(tokenizer_.identifier());

    while (tokenizer_.symbol() == ',') {
        processSymbol(',');
        processIdentifier(tokenizer_.identifier());
    }
    processSymbol(';');
    write("</varDec>");
}

void CompilationEngine::compileStatements() {
    write("<statements>");
    while (Tokenizer::all_statement_keywords.contains(tokenizer_.keyword())) {
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
                break;
        }
    }
    write("</statements>");
}

void CompilationEngine::compileLet() {
    write("<letStatement>");
    processKeyword(Keyword::K_LET);
    processIdentifier(tokenizer_.identifier());
    if (tokenizer_.symbol() == '[') {
        processSymbol('[');
        compileExpression();
        processSymbol(']');
    }

    processSymbol('=');
    compileExpression();
    processSymbol(';');
    write("</letStatement>");
}

void CompilationEngine::compileIf() {
    write("<ifStatement>");
    processKeyword(Keyword::K_IF);
    processSymbol('(');
    compileExpression();
    processSymbol(')');
    processSymbol('{');
    compileStatements();
    processSymbol('}');
    if (tokenizer_.keyword() == Keyword::K_ELSE) {
        processKeyword(Keyword::K_ELSE);
        processSymbol('{');
        compileStatements();
        processSymbol('}');
    }
    write("</ifStatement>");
}

void CompilationEngine::compileWhile() {
    write("<whileStatement>");
    processKeyword(Keyword::K_WHILE);
    processSymbol('(');
    compileExpression();
    processSymbol(')');
    processSymbol('{');
    compileStatements();
    processSymbol('}');
    write("</whileStatement>");
}

void CompilationEngine::compileDo() {
    write("<doStatement>");
    processKeyword(Keyword::K_DO);
    processSubroutineCall();
    processSymbol(';');
    write("</doStatement>");
}

void CompilationEngine::compileReturn() {
    write("<returnStatement>");
    processKeyword(Keyword::K_RETURN);
    if (tokenizer_.symbol() == ';') {
        processSymbol(';');
    } else {
        compileExpression();
        processSymbol(';');
    }
    write("</returnStatement>");
}

void CompilationEngine::compileExpression() {
    write("<expression>");
    compileTerm();
    while (Tokenizer::all_ops.contains(tokenizer_.symbol())) {
        processSymbol(tokenizer_.symbol());
        compileTerm();
    }
    write("</expression>");
}

void CompilationEngine::compileTerm() {
    write("<term>");
    if (tokenizer_.tokenType() == TokenType::INIT_CONST) {
        processInteger(tokenizer_.intVal());
    } else if (tokenizer_.tokenType() == TokenType::STRING_CONST) {
        processString(tokenizer_.stringVal());
    } else if (Tokenizer::all_constant_keywords.contains(tokenizer_.keyword())) {
        processKeyword(tokenizer_.keyword());
    } else {
        if (tokenizer_.symbol() == '(') {
            processSymbol('(');
            compileExpression();
            processSymbol(')');
        } else if (tokenizer_.symbol() == '-' || tokenizer_.symbol() == '~') {
            processSymbol(tokenizer_.symbol());
            compileTerm();
        } else if (tokenizer_.peek(1).symbol == '[') {
            processIdentifier(tokenizer_.identifier());
            processSymbol('[');
            compileExpression();
            processSymbol(']');
        } else if (tokenizer_.peek(1).symbol == '(' || tokenizer_.peek(1).symbol == '.') {
            processSubroutineCall();
        } else if (tokenizer_.tokenType() == TokenType::IDENTIFIER) {
            processIdentifier(tokenizer_.identifier());
        } else {
            throw std::runtime_error(std::format("unexpected term pattern {}", tokenizer_.peek().lexeme));
        }
    }
    write("</term>");
}

void CompilationEngine::compileExpressionList() {
    write("<expressionList>");
    if (tokenizer_.peek().symbol != ')') {
        compileExpression();
        while (tokenizer_.symbol() == ',') {
            processSymbol(',');
            compileExpression();
        }
    }
    write("</expressionList>");
}
