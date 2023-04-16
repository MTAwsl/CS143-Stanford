#ifndef _SYMTAB_H_
#define _SYMTAB_H_
#include <iostream>
#include <list>
#include <unordered_map>

template <class SYM, class DAT>
class SymbolTable {
    typedef std::unordered_map<SYM, DAT> Scope;
    typedef std::list<Scope> ScopeList;
private:
    ScopeList table;
public:
    static void fatal_error(char* msg) {
        std::cerr << msg << std::endl;
        exit(1);
    }

    void enterscope(){
        table.push_back(Scope());
    }

    void exitscope(){
        if (table.empty()) fatal_error("exitscope: Can't remove scope from an empty symbol table.");
        table.pop_back();
    }

    size_t element_of_scope(){
        return table.back().size();
    }

    size_t num_of_scope(){
        return table.size();
    }

    void add(SYM s, const DAT& data){
        if (table.empty()) fatal_error("add: Can't add a symbol without a scope.");
        Scope& curr_scope = table.back();
        DAT data_cpy = data;
        if (curr_scope.count(s)) fatal_error("add: Symbol already exists in this scope.");
        curr_scope.insert({s, std::move(data_cpy)});
    }
    
    bool probe(SYM s, DAT* out) const{
        if (table.empty()) fatal_error("probe: Can't probe without a scope.");
        const Scope& scp = table.back();
        bool result = scp.count(s);
        if (result && out) *out = scp.at(s);
        return result;
    }

    const DAT& probe(SYM s) const {
        if (probe(s, nullptr))
            return table.back().at(s);
        fatal_error("probe: element not found.");
    }

    bool find(SYM s, DAT* out) const{
        if (table.empty()) fatal_error("find: Can't lookup without a scope.");
        for (auto i = --table.cend(); i != table.cbegin(); i--){
            bool result = i->count(s);
            if (result) {
                if (out) *out = i->at(s);
                return true;
            }
        }
        const Scope& scp_begin = table.front();
        bool result = scp_begin.count(s);
        if (result) {
            if(out) *out = scp_begin.at(s);
            return true;
        }
        return false;
    }

    const DAT& find(SYM s) const{
        if (table.empty()) fatal_error("find: Can't lookup without a scope.");
        for (auto i = --table.cend(); i != table.cbegin(); i--){
            bool result = i->count(s);
            if (result) {
                return i->at(s);
            }
        }
        const Scope& scp_begin = table.front();
        bool result = scp_begin.count(s);
        if (result) {
            return scp_begin.at(s);
        }
        fatal_error("Element not found.");
        return *new DAT(); // Should never use
    }

    void dump() {
        int indent = 0;
        for (auto it = table.begin(); it != table.end(); it++){
            std::cout << "Scope: " << std::endl;
            indent++;
            for (auto its = it->begin(); its != it->end(); its++){
                for (int i = 0; i < indent; i++){
                    std::cout << "    ";
                }
                std::cout << its.first << std::endl;        
            }
        }
    }
    
};

#endif