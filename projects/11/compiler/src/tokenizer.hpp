#pragma once
#include <cstddef>
#include <cstdint>
#include <format>
#include <fstream>
#include <ostream>
#include <stdexcept>
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
    K_THIS,
    K_UNDEFINED
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
        case Keyword::K_UNDEFINED:
            return "undefined";
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
    Keyword keyword = Keyword::K_UNDEFINED;
    char symbol;
    std::string identifier;
    int16_t int_val;
    std::string string_val;
    std::string lexeme;

    friend bool operator==(const Token& lhs, const Token& rhs) {
        return lhs.type == rhs.type && lhs.keyword == rhs.keyword && lhs.symbol == rhs.symbol && lhs.identifier == rhs.identifier &&
               lhs.int_val == rhs.int_val && lhs.string_val == rhs.string_val;
    }

    bool match(const Token& other) const {
        if (type != other.type) return false;
        if (type == TokenType::IDENTIFIER) return true;
        if (type == TokenType::KEYWORD) return keyword == other.keyword;
        if (type == TokenType::INIT_CONST) return int_val == other.int_val;
        if (type == TokenType::STRING_CONST) return string_val == other.string_val;
        if (type == TokenType::SYMBOL) return symbol == other.symbol;
        return false;
    }

    std::string toString() const {
        switch (type) {
            case TokenType::IDENTIFIER:
                return identifier;
            case TokenType::KEYWORD:
                return std::string(to_string(keyword));
            case TokenType::INIT_CONST:
                return std::format("{}", int_val);
            case TokenType::STRING_CONST:
                return string_val;
            case TokenType::SYMBOL:
                return std::string(1, symbol);
            default:
                throw std::runtime_error(std::format("unknown token type: {}", to_string(type)));
        }
    }
};

class Tokenizer {
   private:
    std::vector<Token> tokens_;
    std::vector<std::string> code_lines_;
    size_t current_token_index_ = -1;
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

    inline static const std::unordered_set<char> all_ops = {'+', '-', '*', '/', '&', '|', '<', '>', '='};

    inline static const std::unordered_set<Keyword> all_constant_keywords = {Keyword::K_TRUE, Keyword::K_FALSE, Keyword::K_NULL, Keyword::K_THIS};

    inline static const std::unordered_set<Keyword> all_statement_keywords = {Keyword::K_LET, Keyword::K_IF, Keyword::K_WHILE, Keyword::K_DO,
                                                                              Keyword::K_RETURN};

    Tokenizer(const std::string& input_file);
    void advance();
    bool hasMoreTokens() const;
    inline const Token& peek(size_t offset = 0) const {
        size_t index = current_token_index_ + offset;
        if (index == -1 || index >= tokens_.size()) {
            throw std::runtime_error(std::format("Token index {} is out of range 0-{}", index, tokens_.size()));
        }
        return tokens_[index];
    };
    inline size_t get_current_index() { return current_token_index_; }
    TokenType tokenType() const;
    Keyword keyword() const;
    char symbol() const;
    const std::string& identifier() const;
    int16_t intVal() const;
    const std::string& stringVal() const;
    void printXML(std::ostream& out) const;
    void printXML(std::ostream& out, const Token& token) const;
};
