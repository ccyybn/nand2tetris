#include "tokenizer.hpp"

#include <cstdint>
#include <format>
#include <fstream>
#include <iostream>
#include <stdexcept>
#include <string>
#include <string_view>
#include <vector>

namespace {
bool isDigital(const std::string_view& segment) {
    if (segment.empty()) return false;

    for (const char& ch : segment) {
        if (ch < '0' || ch > '9') {
            return false;
        }
    }
    return true;
}

bool isIdentifier(const std::string_view& segment) {
    if (segment.empty()) return false;

    char c = segment[0];
    bool is_alpha_or_underscore = (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z') || (c == '_');
    if (!is_alpha_or_underscore) return false;

    for (int i = 1; i < segment.length(); i++) {
        char c = segment[i];
        bool is_alpha_or_underscore = (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z') || (c == '_');
        bool is_digit = (c >= '0' && c <= '9');
        if (!is_alpha_or_underscore && !is_digit) {
            return false;
        }
    }
    return true;
}

std::vector<std::string_view> toSegments(const std::string_view& str) {
    std::vector<std::string_view> segments;

    int last_symbol_pos = -1;
    bool is_in_string = false;
    for (int i = 0; i < str.length(); i++) {
        char ch = str[i];

        if (ch == '"') {
            if (is_in_string) {
                is_in_string = false;
                segments.push_back(str.substr(last_symbol_pos, i - last_symbol_pos + 1));
                last_symbol_pos = i;
                continue;
            } else {
                is_in_string = true;
                last_symbol_pos = i;
            }
        }

        if (is_in_string) continue;

        if (ch == ' ' || Tokenizer::all_symbols.contains(ch)) {
            if (i > last_symbol_pos + 1) {
                segments.push_back(str.substr(last_symbol_pos + 1, i - last_symbol_pos - 1));
            }
            if (ch != ' ') {
                segments.push_back(str.substr(i, 1));
            }
            last_symbol_pos = i;
        }
    }
    return segments;
}
}  // namespace

static std::string trim(const std::string& str) {
    const std::string WHITESPACE = " \t\r\n";

    size_t start = str.find_first_not_of(WHITESPACE);
    if (start == std::string::npos) {
        return "";
    }

    size_t end = str.find_last_not_of(WHITESPACE);

    return str.substr(start, end - start + 1);
}

std::vector<std::string_view> split(const std::string_view& str, std::string delimiters) {
    std::vector<std::string_view> tokens;
    size_t start = str.find_first_not_of(delimiters);

    while (start != std::string::npos) {
        size_t end = str.find_first_of(delimiters, start);
        tokens.push_back(str.substr(start, end - start));
        start = str.find_first_not_of(delimiters, end);
    }
    return tokens;
}

Tokenizer::Tokenizer(const std::string& input_file) {
    std::fstream file(input_file);
    if (!file.is_open()) {
        throw std::runtime_error("Cannot open the file: " + input_file);
    }
    parseLines(file);
    parseTokens();
    std::cout << std::format("{} tokens {}", input_file, tokens_.size()) << std::endl;
}

void Tokenizer::parseLines(std::fstream& file) {
    std::string line;
    bool in_block_comment = false;
    while (std::getline(file, line)) {
        std::string trimed_line = trim(line);

        if (trimed_line.starts_with("/*")) {
            in_block_comment = true;
        }

        if (trimed_line.ends_with("*/")) {
            in_block_comment = false;
            continue;
        }

        if (in_block_comment) {
            continue;
        }

        if (!trimed_line.empty() && !trimed_line.starts_with("//")) {
            auto comment_index = trimed_line.find("//");
            if (comment_index != trimed_line.npos) {
                trimed_line = trimed_line.substr(0, comment_index);
            }
            code_lines_.push_back(trim(trimed_line));
        }
    }
}

void Tokenizer::parseTokens() {
    for (const std::string_view& line : code_lines_) {
        std::vector<std::string_view> segments = toSegments(line);
        for (const std::string_view& segment : segments) {
            if (all_keywords.contains(segment)) {
                tokens_.push_back({.type = TokenType::KEYWORD, .keyword = all_keywords.at(segment)});
            } else if (segment.length() == 1 && all_symbols.contains(segment.at(0))) {
                tokens_.push_back({.type = TokenType::SYMBOL, .symbol = segment.at(0)});
            } else if (segment.starts_with("\"") && segment.ends_with("\"")) {
                tokens_.push_back({.type = TokenType::STRING_CONST, .string_val = std::string(segment.substr(1, segment.length() - 2))});
            } else if (isDigital(segment)) {
                const int intVal = std::stoi(std::string(segment));
                if (intVal < 0 || intVal > 32767) {
                    throw std::runtime_error("Integer values must be between 0 and 32767.");
                }
                tokens_.push_back({.type = TokenType::INIT_CONST, .int_val = static_cast<int16_t>(intVal)});
            } else if (isIdentifier(segment)) {
                tokens_.push_back({.type = TokenType::IDENTIFIER, .identifier = std::string(segment)});
            } else {
                throw std::runtime_error(std::format("Unknown segment: {}", segment));
            }
        }
    }
}

bool Tokenizer::hasMoreTokens() const { return current_token_index_ + 1 < tokens_.size(); }

void Tokenizer::advance() {
    if (hasMoreTokens()) {
        current_token_index_++;
    } else {
        throw std::runtime_error("No more token to advance.");
    }
}

inline const Token& Tokenizer::getCurrentToken() const {
    if (current_token_index_ == -1) {
        throw std::runtime_error("Token index is -1");
    }
    return tokens_[current_token_index_];
}

TokenType Tokenizer::tokenType() const { return getCurrentToken().type; }

Keyword Tokenizer::keyword() const { return getCurrentToken().keyword; }

char Tokenizer::symbol() const { return getCurrentToken().symbol; }

const std::string& Tokenizer::identifier() const { return getCurrentToken().identifier; }

int16_t Tokenizer::intVal() const { return getCurrentToken().int_val; }

const std::string& Tokenizer::stringVal() const { return getCurrentToken().string_val; }
