#include <cstddef>
#include <stdexcept>
#include <string>
#include <unordered_map>

#include "tokenizer.hpp"

enum class KIND { STATIC, FIELD, ARG, VAR, NONE };

constexpr std::string_view to_string(KIND type) {
    switch (type) {
        case KIND::STATIC:
            return "STATIC";
        case KIND::FIELD:
            return "FIELD";
        case KIND::ARG:
            return "ARG";
        case KIND::VAR:
            return "VAR";
        case KIND::NONE:
            return "NONE";
        default:
            return "UNKNOWN";
    }
}

struct SymbolRecord {
    std::string name;
    std::string type;
    KIND kind;
    size_t index;
};

class SymbolTable {
   private:
    const std::string_view table_name_;
    std::unordered_map<std::string, SymbolRecord> symbol_table_;
    std::unordered_map<KIND, size_t> kind_count_;

   public:
    SymbolTable(const std::string_view table_name);
    inline static KIND toKind(Keyword keyword) {
        switch (keyword) {
            case Keyword::K_STATIC:
                return KIND::STATIC;
            case Keyword::K_FIELD:
                return KIND::FIELD;
            default:
                throw std::runtime_error("unexpected keyword");
        }
    }
    void reset();
    void define(const std::string& name, const std::string_view type, KIND kind);
    size_t varCount(KIND kind);
    KIND kindOf(const std::string& name);
    const std::string& typeOf(const std::string& name);
    size_t indexOf(const std::string& name);
};
