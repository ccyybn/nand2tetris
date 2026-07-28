#include "symbol_table.hpp"

#include <iostream>
#include <string>

SymbolTable::SymbolTable(const std::string_view table_name) : table_name_(table_name) {}

void SymbolTable::reset() {
    std::cout << std::format("[{}] reseting", table_name_) << std::endl;
    symbol_table_.clear();
    kind_count_.clear();
}

void SymbolTable::define(const std::string& name, const std::string_view type, KIND kind) {
    std::cout << std::format("[{}] putting {} -> {}, {}", table_name_, name, type, to_string(kind)) << std::endl;
    symbol_table_[name] = {name, std::string(type), kind, kind_count_[kind]++};
}

size_t SymbolTable::varCount(KIND kind) { return kind_count_[kind]; }

KIND SymbolTable::kindOf(const std::string& name) {
    auto it = symbol_table_.find(name);
    if (it != symbol_table_.end()) {
        std::cout << std::format("[{}] kind of {} -> {}", table_name_, name, to_string(it->second.kind)) << std::endl;
        return it->second.kind;
    } else {
        std::cout << std::format("[{}] kind of {} not found", table_name_, name) << std::endl;
        return KIND::NONE;
    }
}

size_t SymbolTable::indexOf(const std::string& name) { return symbol_table_.at(name).index; }

const std::string& SymbolTable::typeOf(const std::string& name) { return symbol_table_.at(name).type; }
