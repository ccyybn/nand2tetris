#pragma once
#include <cstdint>
#include <fstream>
#include <string>
#include <string_view>
#include <unordered_map>
#include <unordered_set>
#include <vector>

enum class TokenType { KEYWORD, SYMBOL, IDENTIFIER, INIT_CONST, STRING_CONST };
enum class Keyword {
    K_CLASS,
    K_METHOD,
    K_FUNCTION,
    K_CONSTRUCTOR,
    K_INT,
    K_BOOLEAN,
    K_CHAR,
    K_VOID,
    K_VAR,
    K_STATIC,
    K_FIELD,
    K_LET,
    K_DO,
    K_IF,
    K_ELSE,
    K_WHILE,
    K_RETURN,
    K_TRUE,
    K_FALSE,
    K_NULL,
    K_THIS
};

constexpr std::string_view to_string(TokenType type) {
    switch (type) {
        case TokenType::KEYWORD:
            return "keyword";
        case TokenType::SYMBOL:
            return "symbol";
        case TokenType::IDENTIFIER:
            return "identifier";
        case TokenType::INIT_CONST:
            return "integerConstant";
        case TokenType::STRING_CONST:
            return "stringConstant";
        default:
            return "Unknown";
    }
}

constexpr std::string_view to_string(Keyword k) {
    switch (k) {
        case Keyword::K_CLASS:
            return "class";
        case Keyword::K_METHOD:
            return "method";
        case Keyword::K_FUNCTION:
            return "function";
        case Keyword::K_CONSTRUCTOR:
            return "constructor";
        case Keyword::K_INT:
            return "int";
        case Keyword::K_BOOLEAN:
            return "boolean";
        case Keyword::K_CHAR:
            return "char";
        case Keyword::K_VOID:
            return "void";
        case Keyword::K_VAR:
            return "var";
        case Keyword::K_STATIC:
            return "static";
        case Keyword::K_FIELD:
            return "field";
        case Keyword::K_LET:
            return "let";
        case Keyword::K_DO:
            return "do";
        case Keyword::K_IF:
            return "if";
        case Keyword::K_ELSE:
            return "else";
        case Keyword::K_WHILE:
            return "while";
        case Keyword::K_RETURN:
            return "return";
        case Keyword::K_TRUE:
            return "true";
        case Keyword::K_FALSE:
            return "false";
        case Keyword::K_NULL:
            return "null";
        case Keyword::K_THIS:
            return "this";
        default:
            return "unknown";
    }
}

constexpr std::string escape_xml(const std::string_view& str) {
    std::string result;
    result.reserve(str.size() + 16);

    for (char c : str) {
        switch (c) {
            case '&':
                result.append("&amp;");
                break;
            case '<':
                result.append("&lt;");
                break;
            case '>':
                result.append("&gt;");
                break;
            case '"':
                result.append("&quot;");
                break;
            case '\'':
                result.append("&apos;");
                break;
            default:
                result.push_back(c);
                break;
        }
    }
    return result;
}

struct Token {
    TokenType type;
    Keyword keyword;
    char symbol;
    std::string identifier;
    int16_t int_val;
    std::string string_val;
};

class Tokenizer {
   private:
    std::vector<Token> tokens_;
    std::vector<std::string> code_lines_;
    size_t current_token_index_ = -1;
    inline const Token& getCurrentToken() const;
    void parseLines(std::fstream& file);
    void parseTokens();

   public:
    inline static const std::unordered_map<std::string_view, Keyword> all_keywords = {{to_string(Keyword::K_CLASS), Keyword::K_CLASS},
                                                                                      {to_string(Keyword::K_METHOD), Keyword::K_METHOD},
                                                                                      {to_string(Keyword::K_FUNCTION), Keyword::K_FUNCTION},
                                                                                      {to_string(Keyword::K_CONSTRUCTOR), Keyword::K_CONSTRUCTOR},
                                                                                      {to_string(Keyword::K_INT), Keyword::K_INT},
                                                                                      {to_string(Keyword::K_BOOLEAN), Keyword::K_BOOLEAN},
                                                                                      {to_string(Keyword::K_CHAR), Keyword::K_CHAR},
                                                                                      {to_string(Keyword::K_VOID), Keyword::K_VOID},
                                                                                      {to_string(Keyword::K_VAR), Keyword::K_VAR},
                                                                                      {to_string(Keyword::K_STATIC), Keyword::K_STATIC},
                                                                                      {to_string(Keyword::K_FIELD), Keyword::K_FIELD},
                                                                                      {to_string(Keyword::K_LET), Keyword::K_LET},
                                                                                      {to_string(Keyword::K_DO), Keyword::K_DO},
                                                                                      {to_string(Keyword::K_IF), Keyword::K_IF},
                                                                                      {to_string(Keyword::K_ELSE), Keyword::K_ELSE},
                                                                                      {to_string(Keyword::K_WHILE), Keyword::K_WHILE},
                                                                                      {to_string(Keyword::K_RETURN), Keyword::K_RETURN},
                                                                                      {to_string(Keyword::K_TRUE), Keyword::K_TRUE},
                                                                                      {to_string(Keyword::K_FALSE), Keyword::K_FALSE},
                                                                                      {to_string(Keyword::K_NULL), Keyword::K_NULL},
                                                                                      {to_string(Keyword::K_THIS), Keyword::K_THIS}};

    inline static const std::unordered_set<char> all_symbols = {'{', '}', '(', ')', '[', ']', '.', ',', ';', '+',
                                                                '-', '*', '/', '&', '|', '<', '>', '=', '~'};
    Tokenizer(const std::string& input_file);
    void advance();
    bool hasMoreTokens() const;
    TokenType tokenType() const;
    Keyword keyword() const;
    char symbol() const;
    const std::string& identifier() const;
    int16_t intVal() const;
    const std::string& stringVal() const;
};
