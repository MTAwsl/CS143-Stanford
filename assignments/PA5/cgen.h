#include <assert.h>
#include <stdio.h>
#include <unordered_map>
#include "emit.h"
#include "cool-tree.h"
#include "symtab.h"

enum Basicness
{
    Basic,
    NotBasic
};
#define TRUE 1
#define FALSE 0

class CgenClassTable;
typedef CgenClassTable *CgenClassTableP;

class CgenNode;
typedef CgenNode *CgenNodeP;

enum CLASS_TAG{
    ERROR_TAG = -1,
    OBJECT_TAG = 0,
    INT_TAG,
    STRING_TAG,
    BOOL_TAG,
    IO_TAG,
    GENERATION_START_TAG
};

void fatal_error(const char* msg) { 
    cerr << msg << endl; 
    exit(1);
}

class CgenClassTable 
{
private:
    List<CgenNode> *nds;
    ostream &str;
    static std::unordered_map<Symbol, CgenNode*> classMap; 
    static unsigned int labelnum;

    // The following methods emit code for
    // constants and global declarations.

    void code_global_data();
    void code_global_text();
    void code_bools(int);
    void code_select_gc();
    void code_constants();
    void code_prototype();
    void code_classTabs();
    void code_classes();

    // The following creates an inheritance graph from
    // a list of classes.  The graph is implemented as
    // a tree of `CgenNode', and class names are placed
    // in the base class symbol table.

    void install_basic_classes();
    void install_class(CgenNodeP nd);
    void install_classes(Classes cs);
    void build_inheritance_tree();
    void set_relations(CgenNodeP nd);

public:
    CgenClassTable(Classes, ostream &str);
    static CgenNode* getclass(Symbol sym) {
        if (classMap.find(sym) == classMap.end()){
            return nullptr;
        }
        return classMap.at(sym);
    }
    static void addclass(Symbol sym, CgenNode* node){
        if (classMap.find(sym) != classMap.end()){
            fatal_error("Class already defined.");
        }
        classMap.insert({sym, node});
    }
    static unsigned int AllocLabel(){
        return labelnum++;
    }
    void code();
    CgenNodeP root();
};

class BoolConst
{
private:
    int val;

public:
    BoolConst(int);
    void code_def(ostream &, int boolclasstag);
    void code_ref(ostream &) const;
};

enum ReferenceType{
    REF_STACK,
    REF_ATTRIBUTE,
    REF_PARAM,
    REF_ERROR 
};

class Reference{
public:
    ReferenceType ref_type = REF_ERROR;
    CgenNode* type = nullptr;
    int offset = 0;
    Reference(ReferenceType rt, CgenNode* t, int offset) : ref_type(rt), type(t), offset(offset) {}
    Reference(ReferenceType rt, Symbol t, int offset) : ref_type(rt), type(CgenClassTable::getclass(t)), offset(offset) {}
    Reference() = default;
};

class ReferenceTracer : public SymbolTable<Symbol, Reference>{
private:
    unsigned int stack_offset = 0;
    unsigned int attr_offset = 3 * WORD_SIZE;
    unsigned int param_offset = 0;
public:
    ReferenceTracer() {enterscope();}
    void AddParam(Symbol id, Symbol type){
        add(id, Reference(REF_PARAM, type, param_offset));
        param_offset += WORD_SIZE;
    }
    void StackAlloc(Symbol id, Symbol type){
        add(id, Reference(REF_STACK, type, stack_offset));
        stack_offset += WORD_SIZE; 
    }
    void StackAllocTemp(){
        stack_offset += WORD_SIZE;
    }
    void StackFreeTemp(){
        stack_offset -= WORD_SIZE;
    }
    void StackFreeTemps(size_t i){
        stack_offset -= WORD_SIZE * i;
    }
    void AddAttr(Symbol id, Symbol type){
        add(id, Reference(REF_ATTRIBUTE, type, attr_offset));
        attr_offset += WORD_SIZE;
    }
    void exitscope(){
        if (num_of_scope() == 1){
            fatal_error("Retract initial scope is not allowed.");
            return;
        }
        stack_offset -= WORD_SIZE * element_of_scope();
        SymbolTable<Symbol,Reference>::exitscope();
    }
    const Reference& find_ref(Symbol sym) const{
        return find(sym);
    }
    std::string code_ref(Symbol sym) const{
        const Reference& ref = find_ref(sym);
        switch(ref.ref_type){
        case REF_STACK:
            return std::to_string(stack_offset - ref.offset) + "($sp)";
        case REF_ATTRIBUTE:
            return std::to_string(ref.offset) + "($s0)";
        case REF_PARAM:
            return std::to_string(param_offset + WORD_SIZE + stack_offset - ref.offset) + "($sp)"; // + WORD_SIZE means adding the return address
        default:
            fatal_error("REF_ERROR detected in code_ref.");
        }
        return "THIS SHOULD NEVER BE RETURNED.";
    }
    int code_ref_raw(Symbol sym, const char*& out) const{
        const Reference& ref = find_ref(sym);
        switch(ref.ref_type){
        case REF_STACK:
            out = SP;
            return (stack_offset - ref.offset);
        case REF_ATTRIBUTE:
            out = SELF;
            return ref.offset;
        case REF_PARAM:
            out = SP;
            return (param_offset + WORD_SIZE + stack_offset - ref.offset); // + WORD_SIZE means adding the return address
        default:
            fatal_error("REF_ERROR detected in code_ref.");
        }
       return INT32_MAX; // Should never be returned.
    }
};

class CgenNode : public class__class
{
private:
    CgenNodeP parentnd = nullptr;       // Parent of class
    List<CgenNode> *children = nullptr; // Children of class
    Basicness basic_status;   // `Basic' if class is basic
                              // `NotBasic' otherwise
    int classtag;
    const ReferenceTracer ref_tracer;

public:
    std::unordered_map<Symbol, unsigned int> dispatchTab;
    std::list<attr_class*> attrs_list;
    std::list<method_class*> methods_list;
    CgenNode(Class_ c, Basicness bstatus, CgenClassTable*, unsigned int);
    const ReferenceTracer& get_reftracer() const { return ref_tracer; }
    void add_child(CgenNodeP child);
    List<CgenNode> *get_children() { return children; }
    void set_parentnd(CgenNodeP p);
    CgenNodeP get_parentnd() { return parentnd; }
    int basic() { return (basic_status == Basic); }
    int get_tag() {return classtag;}
    void set_tag(int tag){ classtag = tag; }
};