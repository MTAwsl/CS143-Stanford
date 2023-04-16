#ifndef SEMANT_H_
#define SEMANT_H_

#include <assert.h>
#include <iostream>
#include <unordered_map>
#include <unordered_set>
#include <list>
#include <sstream>
#include "stringtab.h"
#include "symtab.h"

#define TRUE 1
#define FALSE 0

class Class__class;
class Type;
class Method;
class Variable;
typedef Class__class *Class_;
typedef SymbolTable<Symbol, Type> SymTab;
typedef std::unordered_map<Symbol, Method> MethodTab;
typedef std::list<Variable> ArgList;
typedef list_node<Class_> Classes_class;
typedef Classes_class *Classes;

class SemanticChecker
{
private:
    void install_basic_classes();
    void generate_inheritance_graph();
    static void init_parents_and_methods(Class_, std::unordered_set<Class_> &, std::unordered_map<Symbol, Class_> &);
    Classes ast_root;
    std::unordered_set<Class_> basic_classes_set;
    static std::unordered_map<Symbol, Class_> symtocls;
public:
    SemanticChecker(Classes);
    Classes get_ast() const;
    static int errors;
    static Class_ get_class(Symbol sym);
    static bool has_class(Symbol sym);
    static ostream& semant_error(Class_);
    static ostream& semant_error(Symbol, const tree_node*);
    static ostream& semant_error(Class_, const tree_node*);
    static ostream& semant_error();
};

    
class Type{
private:
    bool bIsSelf;
    Class_ cls;
public:
    Type(Symbol sym);
    Type(Class_ cls, bool bSelf=false) : bIsSelf(bSelf), cls(cls) {}
    const Class_ get_class() const;
    Symbol get_symbol() const;
    bool isSelf() const;
    bool isNoType() const;
    bool operator<=(const Type&) const;
    Type upper_bound(const Type&) const;
    bool operator==(const Type& t) const;
    bool operator!=(const Type& t) const;
};

class Variable {
private:
    Symbol name;
    Type type;
public:
    Type get_type() const {return type;}
    Symbol get_name() const {return name;}
    Variable(Symbol name, Type type): name(name), type(type) {}
};

class Method{
private:
    Type retn_type;
    ArgList args;
public:
    Method(Type retn_type, ArgList args) : retn_type(retn_type), args(std::move(args)) {}
    const Type get_retn_type() const {return retn_type;}
    const ArgList& get_args() const {return args;}
};


#endif
