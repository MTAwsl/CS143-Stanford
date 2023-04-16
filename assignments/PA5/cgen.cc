
//**************************************************************
//
// Code generator SKELETON
//
// Read the comments carefully. Make sure to
//    initialize the base class tags in
//       `CgenClassTable::CgenClassTable'
//
//    Add the label for the dispatch tables to
//       `IntEntry::code_def'
//       `StringEntry::code_def'
//       `BoolConst::code_def'
//
//    Add code to emit everyting else that is needed
//       in `CgenClassTable::code'
//
//
// The files as provided will produce code to begin the code
// segments, declare globals, and emit constants.  You must
// fill in the rest.
//
//**************************************************************

#include "cgen.h"
#include "cgen_gc.h"
#include <unordered_set>
#include <map>
#include <set>
#include <list>
#include <vector>

std::unordered_map<Symbol, CgenNode*> CgenClassTable::classMap;
unsigned int CgenClassTable::labelnum = 0;
extern void emit_string_constant(ostream &str, char *s);
extern int cgen_debug;

//
// Three symbols from the semantic analyzer (semant.cc) are used.
// If e : No_type, then no code is generated for e.
// Special code is generated for new SELF_TYPE.
// The name "self" also generates code different from other references.
//
//////////////////////////////////////////////////////////////////////
//
// Symbols
//
// For convenience, a large number of symbols are predefined here.
// These symbols include the primitive type and method names, as well
// as fixed names used by the runtime system.
//
//////////////////////////////////////////////////////////////////////
Symbol
    arg,
    arg2,
    Bool,
    concat,
    cool_abort,
    copy,
    Int,
    in_int,
    in_string,
    IO,
    length,
    Main,
    main_meth,
    No_class,
    No_type,
    Object,
    out_int,
    out_string,
    prim_slot,
    self,
    SELF_TYPE,
    Str,
    str_field,
    substr,
    type_name,
    val;
//
// Initializing the predefined symbols.
//
static void initialize_constants(void)
{
    arg = idtable.add_string("arg");
    arg2 = idtable.add_string("arg2");
    Bool = idtable.add_string("Bool");
    concat = idtable.add_string("concat");
    cool_abort = idtable.add_string("abort");
    copy = idtable.add_string("copy");
    Int = idtable.add_string("Int");
    in_int = idtable.add_string("in_int");
    in_string = idtable.add_string("in_string");
    IO = idtable.add_string("IO");
    length = idtable.add_string("length");
    Main = idtable.add_string("Main");
    main_meth = idtable.add_string("main");
    //   _no_class is a symbol that can't be the name of any
    //   user-defined class.
    No_class = idtable.add_string("_no_class");
    No_type = idtable.add_string("_no_type");
    Object = idtable.add_string("Object");
    out_int = idtable.add_string("out_int");
    out_string = idtable.add_string("out_string");
    prim_slot = idtable.add_string("_prim_slot");
    self = idtable.add_string("self");
    SELF_TYPE = idtable.add_string("SELF_TYPE");
    Str = idtable.add_string("String");
    str_field = idtable.add_string("_str_field");
    substr = idtable.add_string("substr");
    type_name = idtable.add_string("type_name");
    val = idtable.add_string("_val");
}

static char *gc_init_names[] =
    {"_NoGC_Init", "_GenGC_Init", "_ScnGC_Init"};
static char *gc_collect_names[] =
    {"_NoGC_Collect", "_GenGC_Collect", "_ScnGC_Collect"};

//  BoolConst is a class that implements code generation for operations
//  on the two booleans, which are given global names here.
BoolConst falsebool(FALSE);
BoolConst truebool(TRUE);

//*********************************************************
//
// Define method for code generation
//
// This is the method called by the compiler driver
// `cgtest.cc'. cgen takes an `ostream' to which the assembly will be
// emmitted, and it passes this and the class list of the
// code generator tree to the constructor for `CgenClassTable'.
// That constructor performs all of the work of the code
// generator.
//
//*********************************************************

void program_class::cgen(ostream &os)
{
    // spim wants comments to start with '#'
    os << "# start of generated code\n";

    initialize_constants();
    CgenClassTable *codegen_classtable = new CgenClassTable(classes, os);

    os << "\n# end of generated code\n";
}

//////////////////////////////////////////////////////////////////////////////
//
//  emit_* procedures
//
//  emit_X  writes code for operation "X" to the output stream.
//  There is an emit_X for each opcode X, as well as emit_ functions
//  for generating names according to the naming conventions (see emit.h)
//  and calls to support functions defined in the trap handler.
//
//  Register names and addresses are passed as strings.  See `emit.h'
//  for symbolic names you can use to refer to the strings.
//
//////////////////////////////////////////////////////////////////////////////

static void emit_load(const char *dest_reg, int offset, const char *source_reg, ostream &s)
{
    s << LW << dest_reg << " " << offset * WORD_SIZE << "(" << source_reg << ")"
      << endl;
}

static void emit_partial_load(const char *dest_reg, ostream &s)
{
    s << LW << dest_reg << " ";
}

static void emit_store(const char *source_reg, int offset, const char *dest_reg, ostream &s)
{
    s << SW << source_reg << " " << offset * WORD_SIZE << "(" << dest_reg << ")"
      << endl;
}

static void emit_partial_store(const char *source_reg, ostream &s)
{
    s << SW << source_reg << " ";
}

static void emit_load_imm(const char *dest_reg, int val, ostream &s)
{
    s << LI << dest_reg << " " << val << endl;
}

static void emit_load_address(const char *dest_reg, const char *address, ostream &s)
{
    s << LA << dest_reg << " " << address << endl;
}

static void emit_partial_load_address(const char *dest_reg, ostream &s)
{
    s << LA << dest_reg << " ";
}

static void emit_load_bool(const char *dest, const BoolConst &b, ostream &s)
{
    emit_partial_load_address(dest, s);
    b.code_ref(s);
    s << endl;
}

static void emit_load_string(const char *dest, StringEntry *str, ostream &s)
{
    emit_partial_load_address(dest, s);
    str->code_ref(s);
    s << endl;
}

static void emit_load_int(const char *dest, IntEntry *i, ostream &s)
{
    emit_partial_load_address(dest, s);
    i->code_ref(s);
    s << endl;
}

static void emit_move(const char *dest_reg, const char *source_reg, ostream &s)
{
    s << MOVE << dest_reg << " " << source_reg << endl;
}

static void emit_neg(const char *dest, const char *src1, ostream &s)
{
    s << NEG << dest << " " << src1 << endl;
}

static void emit_add(const char *dest, const char *src1, const char *src2, ostream &s)
{
    s << ADD << dest << " " << src1 << " " << src2 << endl;
}

static void emit_addu(const char *dest, const char *src1, const char *src2, ostream &s)
{
    s << ADDU << dest << " " << src1 << " " << src2 << endl;
}

static void emit_addiu(const char *dest, const char *src1, int imm, ostream &s)
{
    s << ADDIU << dest << " " << src1 << " " << imm << endl;
}

static void emit_div(const char *dest, const char *src1, const char *src2, ostream &s)
{
    s << DIV << dest << " " << src1 << " " << src2 << endl;
}

static void emit_mul(const char *dest, const char *src1, const char *src2, ostream &s)
{
    s << MUL << dest << " " << src1 << " " << src2 << endl;
}

static void emit_sub(const char *dest, const char *src1, const char *src2, ostream &s)
{
    s << SUB << dest << " " << src1 << " " << src2 << endl;
}

static void emit_sll(const char *dest, const char *src1, int num, ostream &s)
{
    s << SLL << dest << " " << src1 << " " << num << endl;
}

static void emit_jalr(const char *dest, ostream &s)
{
    s << JALR << "\t" << dest << endl;
}

static void emit_jal(const char *address, ostream &s)
{
    s << JAL << address << endl;
}

static void emit_return(ostream &s)
{
    s << RET << endl;
}

static void emit_gc_assign(ostream &s)
{
    s << JAL << "_GenGC_Assign" << endl;
}

static void emit_disptable_ref(Symbol sym, ostream &s)
{
    s << sym << DISPTAB_SUFFIX;
}

static void emit_init_ref(Symbol sym, ostream &s)
{
    s << sym << CLASSINIT_SUFFIX;
}

static void emit_label_ref(int l, ostream &s)
{
    s << "label" << l;
}

static void emit_protobj_ref(Symbol sym, ostream &s)
{
    s << sym << PROTOBJ_SUFFIX;
}

static void emit_method_ref(Symbol classname, Symbol methodname, ostream &s)
{
    s << classname << METHOD_SEP << methodname;
}

static void emit_empty_reg(const char* source, ostream &s){
    s << "\txor\t" << source << '\t' << source << '\t' << source << endl; 
}

static void emit_label_def(int l, ostream &s)
{
    s << GLOBAL;
    emit_label_ref(l,s);
    s << endl;
    emit_label_ref(l, s);
    s << ":" << endl;
}

static void emit_beqz(const char *source, int label, ostream &s)
{
    s << BEQZ << source << " ";
    emit_label_ref(label, s);
    s << endl;
}

static void emit_beq(const char *src1, const char *src2, int label, ostream &s)
{
    s << BEQ << src1 << " " << src2 << " ";
    emit_label_ref(label, s);
    s << endl;
}

static void emit_bne(const char *src1, const char *src2, int label, ostream &s)
{
    s << BNE << src1 << " " << src2 << " ";
    emit_label_ref(label, s);
    s << endl;
}

static void emit_bleq(const char *src1, const char *src2, int label, ostream &s)
{
    s << BLEQ << src1 << " " << src2 << " ";
    emit_label_ref(label, s);
    s << endl;
}

static void emit_blt(const char *src1, const char *src2, int label, ostream &s)
{
    s << BLT << src1 << " " << src2 << " ";
    emit_label_ref(label, s);
    s << endl;
}

static void emit_blti(const char *src1, int imm, int label, ostream &s)
{
    s << BLT << src1 << " " << imm << " ";
    emit_label_ref(label, s);
    s << endl;
}

static void emit_bgti(const char *src1, int imm, int label, ostream &s)
{
    s << BGT << src1 << " " << imm << " ";
    emit_label_ref(label, s);
    s << endl;
}

static void emit_branch(int l, ostream &s)
{
    s << BRANCH;
    emit_label_ref(l, s);
    s << endl;
}

//
// Push a register on the stack. The stack grows towards smaller addresses.
//
static void emit_push(const char *reg, ostream &str)
{
    emit_store(reg, 0, SP, str);
    emit_addiu(SP, SP, -4, str);
}

//
// Pop a register off the stack. The stack shrinks to higher addresses.
//
static void emit_pop(const char *reg, ostream &str)
{
    emit_addiu(SP, SP, 4, str);
    emit_load(reg, 0, SP, str);
}

//
// Fetch the integer value in an Int object.
// Emits code to fetch the integer value of the Integer object pointed
// to by register source into the register dest
//
static void emit_fetch_int(const char *dest, char *source, ostream &s)
{
    emit_load(dest, DEFAULT_OBJFIELDS, source, s);
}

//
// Emits code to store the integer value contained in register source
// into the Integer object pointed to by dest.
//
static void emit_store_int(const char *source, char *dest, ostream &s)
{
    emit_store(source, DEFAULT_OBJFIELDS, dest, s);
}

static void emit_test_collector(ostream &s)
{
    emit_push(ACC, s);
    emit_move(ACC, SP, s);  // stack end
    emit_move(A1, ZERO, s); // allocate nothing
    s << JAL << gc_collect_names[cgen_Memmgr] << endl;
    emit_addiu(SP, SP, 4, s);
    emit_load(ACC, 0, SP, s);
}

static void emit_gc_check(const char *source, ostream &s)
{
    if (source != (char *)A1)
        emit_move(A1, source, s);
    s << JAL << "_gc_check" << endl;
}
///////////////////////////////////////////////////////////////////////
//
// CgenNode methods
//
///////////////////////////////////////////////////////////////////////

CgenNode::CgenNode(Class_ nd, Basicness bstatus, CgenClassTableP ct, unsigned int class_tag = ERROR_TAG) : class__class((const class__class &)*nd),
                                                                                               basic_status(bstatus),
                                                                                               classtag(class_tag)
{
    stringtable.add_string(name->get_string()); // Add class name to string table
}
///////////////////////////////////////////////////////////////////////////////
//
// coding strings, ints, and booleans
//
// Cool has three kinds of constants: strings, ints, and booleans.
// This section defines code generation for each type.
//
// All string constants are listed in the global "stringtable" and have
// type StringEntry.  StringEntry methods are defined both for String
// constant definitions and references.
//
// All integer constants are listed in the global "inttable" and have
// type IntEntry.  IntEntry methods are defined for Int
// constant definitions and references.
//
// Since there are only two Bool values, there is no need for a table.
// The two booleans are represented by instances of the class BoolConst,
// which defines the definition and reference methods for Bools.
//
///////////////////////////////////////////////////////////////////////////////

//
// Strings
//
void StringEntry::code_ref(ostream &s)
{
    s << STRCONST_PREFIX << index;
}

//
// Emit code for a constant String.
// You should fill in the code naming the dispatch table.
//

void StringEntry::code_def(ostream &s, int stringclasstag)
{
    IntEntryP lensym = inttable.add_int(len);

    // Add -1 eye catcher
    s << WORD << "-1" << endl;

    code_ref(s);
    s << LABEL                                                              // label
      << WORD << stringclasstag << endl                                     // tag
      << WORD << (DEFAULT_OBJFIELDS + STRING_SLOTS + (len + 4) / 4) << endl // size
      << WORD;

    /***** Add dispatch information for class String ******/

    s << "String_dispTab" << endl; // dispatch table
    s << WORD;
    lensym->code_ref(s);
    s << endl;                    // string length
    emit_string_constant(s, str); // ascii string
    s << ALIGN;                   // align to word
}

//
// StrTable::code_string
// Generate a string object definition for every string constant in the
// stringtable.
//
void StrTable::code_string_table(ostream &s, int stringclasstag)
{
    for (List<StringEntry> *l = tbl; l; l = l->tl())
        l->hd()->code_def(s, stringclasstag);
}

//
// Ints
//
void IntEntry::code_ref(ostream &s)
{
    s << INTCONST_PREFIX << index;
}

//
// Emit code for a constant Integer.
// You should fill in the code naming the dispatch table.
//

void IntEntry::code_def(ostream &s, int intclasstag)
{
    // Add -1 eye catcher
    s << WORD << "-1" << endl;

    code_ref(s);
    s << LABEL                                           // label
      << WORD << intclasstag << endl                     // class tag
      << WORD << (DEFAULT_OBJFIELDS + INT_SLOTS) << endl // object size
      << WORD;

    /***** Add dispatch information for class Int ******/

    s << "Int_dispTab" << endl;                // dispatch table
    s << WORD << str << endl; // integer value
}

//
// IntTable::code_string_table
// Generate an Int object definition for every Int constant in the
// inttable.
//
void IntTable::code_string_table(ostream &s, int intclasstag)
{
    for (List<IntEntry> *l = tbl; l; l = l->tl())
        l->hd()->code_def(s, intclasstag);
}

//
// Bools
//
BoolConst::BoolConst(int i) : val(i) { assert(i == 0 || i == 1); }

void BoolConst::code_ref(ostream &s) const
{
    s << BOOLCONST_PREFIX << val;
}

//
// Emit code for a constant Bool.
// You should fill in the code naming the dispatch table.
//

void BoolConst::code_def(ostream &s, int boolclasstag)
{
    // Add -1 eye catcher
    s << WORD << "-1" << endl;

    code_ref(s);
    s << LABEL                                            // label
      << WORD << boolclasstag << endl                     // class tag
      << WORD << (DEFAULT_OBJFIELDS + BOOL_SLOTS) << endl // object size
      << WORD;

    /***** Add dispatch information for class Bool ******/

    s << "Bool_dispTab" << endl;                // dispatch table
    s << WORD << val << endl; // value (0 or 1)
}

//////////////////////////////////////////////////////////////////////////////
//
//  CgenClassTable methods
//
//////////////////////////////////////////////////////////////////////////////

//***************************************************
//
//  Emit code to start the .data segment and to
//  declare the global names.
//
//***************************************************

void CgenClassTable::code_global_data()
{
    Symbol main = idtable.lookup_string(MAINNAME);
    Symbol string = idtable.lookup_string(STRINGNAME);
    Symbol integer = idtable.lookup_string(INTNAME);
    Symbol boolc = idtable.lookup_string(BOOLNAME);

    str << "\t.data\n"
        << ALIGN;
    //
    // The following global names must be defined first.
    //
    str << GLOBAL << CLASSNAMETAB << endl;
    str << GLOBAL;
    emit_protobj_ref(main, str);
    str << endl;
    str << GLOBAL;
    emit_protobj_ref(integer, str);
    str << endl;
    str << GLOBAL;
    emit_protobj_ref(string, str);
    str << endl;
    str << GLOBAL;
    falsebool.code_ref(str);
    str << endl;
    str << GLOBAL;
    truebool.code_ref(str);
    str << endl;
    str << GLOBAL << INTTAG << endl;
    str << GLOBAL << BOOLTAG << endl;
    str << GLOBAL << STRINGTAG << endl;

    //
    // We also need to know the tag of the Int, String, and Bool classes
    // during code generation.
    //
    str << INTTAG << LABEL
        << WORD << INT_TAG << endl;
    str << BOOLTAG << LABEL
        << WORD << BOOL_TAG << endl;
    str << STRINGTAG << LABEL
        << WORD << STRING_TAG << endl;
}

//***************************************************
//
//  Emit code to start the .text segment and to
//  declare the global names.
//
//***************************************************

void CgenClassTable::code_global_text()
{
    str << GLOBAL << HEAP_START << endl
        << HEAP_START << LABEL
        << WORD << 0 << endl
        << "\t.text" << endl
        << GLOBAL;
    emit_init_ref(idtable.add_string("Main"), str);
    str << endl
        << GLOBAL;
    emit_init_ref(idtable.add_string("Int"), str);
    str << endl
        << GLOBAL;
    emit_init_ref(idtable.add_string("String"), str);
    str << endl
        << GLOBAL;
    emit_init_ref(idtable.add_string("Bool"), str);
    str << endl
        << GLOBAL;
    emit_method_ref(idtable.add_string("Main"), idtable.add_string("main"), str);
    str << endl;
}

void CgenClassTable::code_bools(int boolclasstag)
{
    falsebool.code_def(str, boolclasstag);
    truebool.code_def(str, boolclasstag);
}

void CgenClassTable::code_select_gc()
{
    //
    // Generate GC choice constants (pointers to GC functions)
    //
    str << GLOBAL << "_MemMgr_INITIALIZER" << endl;
    str << "_MemMgr_INITIALIZER:" << endl;
    str << WORD << gc_init_names[cgen_Memmgr] << endl;
    str << GLOBAL << "_MemMgr_COLLECTOR" << endl;
    str << "_MemMgr_COLLECTOR:" << endl;
    str << WORD << gc_collect_names[cgen_Memmgr] << endl;
    str << GLOBAL << "_MemMgr_TEST" << endl;
    str << "_MemMgr_TEST:" << endl;
    str << WORD << (cgen_Memmgr_Test == GC_TEST) << endl;
}

//********************************************************
//
// Emit code to reserve space for and initialize all of
// the constants.  Class names should have been added to
// the string table (in the supplied code, is is done
// during the construction of the inheritance graph), and
// code for emitting string constants as a side effect adds
// the string's length to the integer table.  The constants
// are emmitted by running through the stringtable and inttable
// and producing code for each entry.
//
//********************************************************

void CgenClassTable::code_constants()
{
    //
    // Add constants that are required by the code generator.
    //
    stringtable.add_string("");
    inttable.add_string("0");

    stringtable.code_string_table(str, STRING_TAG);
    inttable.code_string_table(str, INT_TAG);
    code_bools(BOOL_TAG);
}

CgenClassTable::CgenClassTable(Classes classes, ostream &s) : nds(NULL), str(s)
{
    if (cgen_debug)
        cout << "Building CgenClassTable" << endl;
    install_basic_classes();
    install_classes(classes);
    build_inheritance_tree();

    code();
}

void CgenClassTable::install_basic_classes()
{

    // The tree package uses these globals to annotate the classes built below.
    // curr_lineno  = 0;
    Symbol filename = stringtable.add_string("<basic class>");

    //
    // A few special class names are installed in the lookup table but not
    // the class list.  Thus, these classes exist, but are not part of the
    // inheritance hierarchy.
    // No_class serves as the parent of Object and the other special classes.
    // SELF_TYPE is the self class; it cannot be redefined or inherited.
    // prim_slot is a class known to the code generator.
    //
    addclass(No_class,
        new CgenNode(class_(No_class, No_class, nil_Features(), filename),
                 Basic, this, ERROR_TAG));
    addclass(SELF_TYPE,
        new CgenNode(class_(SELF_TYPE, No_class, nil_Features(), filename),
                 Basic, this, ERROR_TAG));
    addclass(prim_slot,
        new CgenNode(class_(prim_slot, No_class, nil_Features(), filename),
                 Basic, this, ERROR_TAG));

    //
    // The Object class has no parent class. Its methods are
    //        cool_abort() : Object    aborts the program
    //        type_name() : Str        returns a string representation of class name
    //        copy() : SELF_TYPE       returns a copy of the object
    //
    // There is no need for method bodies in the basic classes---these
    // are already built in to the runtime system.
    //
    install_class(
        new CgenNode(
            class_(Object,
                   No_class,
                   append_Features(
                       append_Features(
                           single_Features(method(cool_abort, nil_Formals(), Object, no_expr())),
                           single_Features(method(type_name, nil_Formals(), Str, no_expr()))),
                       single_Features(method(copy, nil_Formals(), SELF_TYPE, no_expr()))),
                   filename),
            Basic, this, OBJECT_TAG));

    //
    // The IO class inherits from Object. Its methods are
    //        out_string(Str) : SELF_TYPE          writes a string to the output
    //        out_int(Int) : SELF_TYPE               "    an int    "  "     "
    //        in_string() : Str                    reads a string from the input
    //        in_int() : Int                         "   an int     "  "     "
    //
    install_class(
        new CgenNode(
            class_(IO,
                   Object,
                   append_Features(
                       append_Features(
                           append_Features(
                               single_Features(method(out_string, single_Formals(formal(arg, Str)),
                                                      SELF_TYPE, no_expr())),
                               single_Features(method(out_int, single_Formals(formal(arg, Int)),
                                                      SELF_TYPE, no_expr()))),
                           single_Features(method(in_string, nil_Formals(), Str, no_expr()))),
                       single_Features(method(in_int, nil_Formals(), Int, no_expr()))),
                   filename),
            Basic, this, IO_TAG));

    //
    // The Int class has no methods and only a single attribute, the
    // "val" for the integer.
    //
    install_class(
        new CgenNode(
            class_(Int,
                   Object,
                   single_Features(attr(val, prim_slot, no_expr())),
                   filename),
            Basic, this, INT_TAG));

    //
    // Bool also has only the "val" slot.
    //
    install_class(
        new CgenNode(
            class_(Bool, Object, single_Features(attr(val, prim_slot, no_expr())), filename),
            Basic, this, BOOL_TAG));

    //
    // The class Str has a number of slots and operations:
    //       val                                  ???
    //       str_field                            the string itself
    //       length() : Int                       length of the string
    //       concat(arg: Str) : Str               string concatenation
    //       substr(arg: Int, arg2: Int): Str     substring
    //
    install_class(
        new CgenNode(
            class_(Str,
                   Object,
                   append_Features(
                       append_Features(
                           append_Features(
                               append_Features(
                                   single_Features(attr(val, Int, no_expr())),
                                   single_Features(attr(str_field, prim_slot, no_expr()))),
                               single_Features(method(length, nil_Formals(), Int, no_expr()))),
                           single_Features(method(concat,
                                                  single_Formals(formal(arg, Str)),
                                                  Str,
                                                  no_expr()))),
                       single_Features(method(substr,
                                              append_Formals(single_Formals(formal(arg, Int)),
                                                             single_Formals(formal(arg2, Int))),
                                              Str,
                                              no_expr()))),
                   filename),
            Basic, this, STRING_TAG));
}

// CgenClassTable::install_class
// CgenClassTable::install_classes
//
// install_classes enters a list of classes in the symbol table.
//
void CgenClassTable::install_class(CgenNodeP nd)
{
    Symbol name = nd->get_name();

    if (getclass(name))
    {
        fatal_error("Class already in scope.");
        return;
    }

    // The class name is legal, so add it to the list of classes
    // and the symbol table.
    nds = new List<CgenNode>(nd, nds);
    addclass(name, nd);
}

void CgenClassTable::install_classes(Classes cs)
{
    for (int i = cs->first(); cs->more(i); i = cs->next(i))
        install_class(new CgenNode(cs->nth(i), NotBasic, this));
}

//
// CgenClassTable::build_inheritance_tree
//
void CgenClassTable::build_inheritance_tree()
{
    for (List<CgenNode> *l = nds; l; l = l->tl())
        set_relations(l->hd());
}

//
// CgenClassTable::set_relations
//
// Takes a CgenNode and locates its, and its parent's, inheritance nodes
// via the class table.  Parent and child pointers are added as appropriate.
//
void CgenClassTable::set_relations(CgenNodeP nd)
{
    Symbol parent_name = nd->get_parent();
    if (parent_name == No_class){
        nd->set_parentnd(nullptr);
        return;
    }
    CgenNodeP parent_node = getclass(parent_name);
    nd->set_parentnd(parent_node);
    parent_node->add_child(nd);
}

void CgenNode::add_child(CgenNodeP n)
{
    children = new List<CgenNode>(n, children);
}

void CgenNode::set_parentnd(CgenNodeP p)
{
    assert(parentnd == NULL);
    //assert(p != NULL);
    parentnd = p;
}

void CgenClassTable::code()
{
    code_global_data();
    code_select_gc();
    code_constants();
    code_classes();
}

void CgenClassTable::code_classes(){
    // The code structure is too bad and I am too lazy to optimize like the semant phase.
    // I am gonna just finish the assignment and pass the test cases. 
    // Again, I am too lazy to construct my own algorithms and classes.
    // But I can comment out where it can be optimized.

    // There are two methods to optimize this.
    // 1. Sort the inheritance tree and use dfs to generate the prototype. Copy the parent's attributes into the new object.
    // 2. Recursively build the prototype of parents. Mark after processed a single class. Then gradually copy parents' attributes to the new object.

    // Well, I am wrong. Seems like the inheritance tree is already sorted. So I am gonna just use dfs then.
    // BUT THE CODE STRUCTURE IS STILL AWFUL

    CgenNode* node = this->getclass(Object);
    //std::unordered_set<CgenNodeP> visited; // Maybe we don't need a visited flag because it is a tree structure. But still I added that incase some errors occurs.
    std::unordered_set<CgenNodeP> classNoInit = {nullptr};
    std::list<CgenNodeP> dfs_stack;
    size_t attrs_size = 0;
    size_t methods_size = 0;
    unsigned int class_tag_allocator = GENERATION_START_TAG;

    while(true) {
        // Next unvisited node
        bool bRetract = true;
        for (auto lst = node->get_children(); lst; lst = lst->tl()){
            CgenNode* nextNode = lst->hd();
            /*if (visited.find(nextNode) != visited.end()){
                continue;
            }*/
            bRetract = false;
            dfs_stack.push_back(nextNode);
            if (!lst->tl()) break;
        }

        std::list<attr_class*>& node_attrs = node->attrs_list;
        std::list<method_class*>& node_methods = node->methods_list;
        
        //visited.insert(node);
        ReferenceTracer* node_reftracer = const_cast<ReferenceTracer*>(&node->get_reftracer());
        Features l = node->get_features();
        if (node->get_parentnd())   // Copy parent attrs
            *node_reftracer = node->get_parentnd()->get_reftracer(); 
        for (auto i = l->first(); l->more(i); i = l->next(i)){
            // WHY DONT YOU SEPERATE ATTRIBUTES AND METHODS IN THE FIRST PLACE?    
            const auto fea = l->nth(i);
            if (typeid(*fea) == typeid(attr_class)){
                node_attrs.push_back(reinterpret_cast<attr_class*>(fea));
                node_reftracer->AddAttr(reinterpret_cast<attr_class*>(fea)->name, reinterpret_cast<attr_class*>(fea)->type_decl);
            }
            else{
                node_methods.push_back(reinterpret_cast<method_class*>(fea));
            }
        }

        if (node_attrs.empty() && classNoInit.find(node->get_parentnd()) != classNoInit.end())
            classNoInit.insert(node);
        
        // Allocate Class Tag using heap structure
        // So we can use a range of integers to identify its childrens
        if (node->get_tag() == ERROR_TAG){
            node->set_tag(class_tag_allocator++);
        }

        // Generate dispatch tables
        std::map<Symbol, std::pair<CgenNode*, method_class*>> methodTab; 
        std::vector<std::pair<CgenNode*, method_class*>> dispTab_vec;
        // I am too lazy to alternate the structure of inheritance tree.
        // So I will do it here.
        // It will be better if the inheritance tree is inside of the class object like the semant phase 
        std::list<CgenNode*> node_inheritance_list = {node};
        CgenNode* parNode = node->get_parentnd();
        while(parNode){
            node_inheritance_list.push_front(parNode);
            parNode = parNode->get_parentnd();
        }
        
        size_t attrs_size = 0;
        for (CgenNode* _node_it: node_inheritance_list){
            for (auto methodptr: _node_it->methods_list){
                std::pair<CgenNode*, method_class*> methodInfo = {_node_it, methodptr};
                if (methodTab.find(methodptr->name) != methodTab.end()){
                    // Overriden method
                    methodptr->set_offset(methodTab[methodptr->name].second->get_offset());
                    dispTab_vec[methodTab[methodptr->name].second->get_offset()] = methodInfo;
                    methodTab[methodptr->name] = methodInfo;
                    continue;
                }
                methodptr->set_offset(dispTab_vec.size()); // Set Offset by stack size
                dispTab_vec.push_back(methodInfo);
                methodTab.insert({methodptr->name, methodInfo});
            }
            attrs_size += _node_it->attrs_list.size();
        }
        str << node->get_name() << "_dispTab:" << endl;
        for (const auto& method: dispTab_vec){
            node->dispatchTab.insert({method.second->name, method.second->get_offset()});
            str << WORD << method.first->get_name() << '.' << method.second->name << endl;
        }
        
        // Generate Prototypes 
        str << WORD << "-1" << endl;
        str << node->get_name() << "_protObj:" << endl;
        str << WORD << node->get_tag() << endl; 
        str << WORD << 3+attrs_size << endl;; 
        str << WORD;
        emit_disptable_ref(node->get_name(), str);
        str << endl
            << "\t.space\t" << WORD_SIZE*attrs_size << endl
            << ALIGN;

        // DFS Body
        if (dfs_stack.empty()){
            break;
        }
        node = dfs_stack.back();
        dfs_stack.pop_back();
    } 

    code_classTabs();
    code_global_text();

    auto next_node = this->nds;
    do {
        node = next_node->hd();
        if (!node->basic()){
            // Generate Init Procedures for types that have attributes.
            if (classNoInit.find(node) == classNoInit.end()){
                str << node->get_name() << "_init:" << endl;
                emit_push(SELF, str);
                emit_push(RA, str);
                emit_move(SELF, ACC, str);
                for (const auto& attr: node->attrs_list){
                    if (attr->type_decl == Str) {
                        const ReferenceTracer& tracer = node->get_reftracer();
                        emit_load_string(ACC, stringtable.lookup_string(""), str);
                        emit_partial_store(ACC,  str);
                        str << tracer.code_ref(attr->name) << endl;
                    }
                    else if (attr->type_decl == Int) {
                        const ReferenceTracer& tracer = node->get_reftracer();
                        emit_load_int(ACC, inttable.lookup_string("0"), str);
                        emit_partial_store(ACC,  str);
                        str << tracer.code_ref(attr->name) << endl;
                    }
                    else if (attr->type_decl == Bool) {
                        const ReferenceTracer& tracer = node->get_reftracer();
                        emit_load_bool(ACC, falsebool, str);
                        emit_partial_store(ACC,  str);
                        str << tracer.code_ref(attr->name) << endl;
                    }
                }
                emit_move(ACC, SELF, str);
                if (classNoInit.find(node->get_parentnd()) == classNoInit.end()){
                    emit_jal(((std::string)node->get_parentnd()->get_name()->get_string() + "_init").c_str(), str);
                }
                for (const auto& attr: node->attrs_list){
                    if (typeid(*attr->init) != typeid(no_expr_class)) {
                        ReferenceTracer tracer = node->get_reftracer();
                        attr->init->code(str, tracer, node);  
                        emit_partial_store(ACC,  str);
                        str << tracer.code_ref(attr->name) << endl;
                        continue;
                    }
                }
                emit_pop(RA, str);
                emit_pop(SELF, str);
                emit_move(ACC, SELF, str);
                emit_return(str);
            }
            else {
                str << node->get_name() << "_init:" << endl;
                emit_return(str);
            }

            // Generate Methods
            for (const auto& method: node->methods_list){
                ReferenceTracer tracer = node->get_reftracer();
                size_t paramSize = 0; 
                str << GLOBAL << node->get_name() << '.' << method->name << endl;
                str << node->get_name() << '.' << method->name << ':' << endl;
                tracer.enterscope();
                for (auto i = method->formals->first(); method->formals->more(i); i = method->formals->next(i)){
                    Formal param = method->formals->nth(i);
                    tracer.AddParam(param->get_name(), param->get_type());
                    paramSize++;
                }
                emit_push(RA, str);
                method->expr->code(str, tracer, node);
                emit_pop(RA, str);
                emit_addiu(SP, SP, paramSize * WORD_SIZE, str); // Callee clean the stack
                emit_return(str);
                tracer.exitscope();
            }
        }
        else {
            // Basic primitive types cannot be inherited.
            // Object and IO have no attributes.
            str << node->get_name() << "_init:" << endl;
            emit_return(str);
        }
        next_node = next_node->tl();
    } while (next_node);
}

void CgenClassTable::code_classTabs(){
    // Need to sort the list incase it is not sorted.
    auto classTag_comparator = [](CgenNode* a, CgenNode* b) {return a->get_tag() < b->get_tag(); };
    std::set<CgenNode*, decltype(classTag_comparator)> classes;
    for (auto curListNode = this->nds; curListNode != nullptr; curListNode = curListNode->tl()) {
        classes.insert(curListNode->hd());
    } 

    // Name Table
    str << "class_nameTab:" << endl;
    for (auto node: classes){
        str << WORD;
        stringtable.lookup_string(node->get_name()->get_string())->code_ref(str);
        str << endl;
    }

    // Object Table
    str << "class_objTab:" << endl;
    for (auto node: classes){
        str << WORD << node->get_name() << "_protObj" << endl;
        str << WORD << node->get_name() << "_init" << endl;
    }
}

CgenNodeP CgenClassTable::root()
{
    return getclass(Object);
}



//******************************************************************
//
//   Fill in the following methods to produce code for the
//   appropriate expression.  You may add or remove parameters
//   as you wish, but if you do, remember to change the parameters
//   of the declarations in `cool-tree.h'  Sample code for
//   constant integers, strings, and booleans are provided.
//
//*****************************************************************

void assign_class::code(ostream& str, ReferenceTracer& ref_tracer, CgenNode* self_class)
{
    str << "# ASSIGN: " << this->get_line_number() << endl;
    this->expr->code(str, ref_tracer, self_class);
    const char* reg;
    int offset = ref_tracer.code_ref_raw(this->name, reg);
    emit_partial_store(ACC,str);
    str << offset << '(' << reg << ')' << endl;
    // Need to notify GC for whatever reason
    emit_addiu(A1, reg, offset, str);
    emit_gc_assign(str);
    str << "# END: " << this->get_line_number() << endl;
}

void static_dispatch_class::code(ostream& str, ReferenceTracer& ref_tracer, CgenNode* self_class)
{
    str << "# STATIC DISPATCH: " << this->get_line_number() << endl;
    unsigned int abortlabel = CgenClassTable::AllocLabel();
    unsigned int end = CgenClassTable::AllocLabel();
    unsigned int paramSize = 1;
    CgenNode* type = this->type_name == SELF_TYPE ? self_class : CgenClassTable::getclass(this->type_name);
    emit_push(SELF, str);
    ref_tracer.StackAllocTemp();
    for (auto i = this->actual->first(); this->actual->more(i); i = this->actual->next(i)){
        Expression sub_expr = this->actual->nth(i);
        sub_expr->code(str, ref_tracer, self_class);
        emit_push(ACC, str);
        ref_tracer.StackAllocTemp();
        paramSize++;
    }
    this->expr->code(str, ref_tracer, self_class);
    emit_beqz(ACC, abortlabel, str);
    emit_load_address(T1, ((std::string)this->type_name->get_string()+"_dispTab").c_str(), str); // Too lazy to add elements into the structure :D
    emit_load(T1, type->dispatchTab.at(this->name), T1, str);
    emit_move(SELF, ACC, str);
    emit_jal(T1, str);
    emit_move(SELF, ACC, str);
    emit_pop(SELF, str);
    ref_tracer.StackFreeTemps(paramSize);
    emit_branch(end, str);
    emit_label_def(abortlabel, str);
    // A0 -> filename
    emit_partial_load_address(ACC, str);
    stringtable.lookup_string(self_class->get_filename()->get_string())->code_ref(str);
    str << endl;
    // T1 -> lineno
    emit_load_imm(T1, line_number, str);
    emit_jal("_dispatch_abort", str);
    emit_label_def(end, str);
    str << "# END: " << this->get_line_number() << endl;
}

void dispatch_class::code(ostream& str, ReferenceTracer& ref_tracer, CgenNode* self_class)
{
    str << "# DISPATCH: " << this->get_line_number() << endl;
    unsigned int abortlabel = CgenClassTable::AllocLabel();
    unsigned int end = CgenClassTable::AllocLabel();
    size_t paramSize = 1; // 1 is for SELF value pushed onto the stack
    CgenNode* type = this->expr->get_type() == SELF_TYPE ? self_class : CgenClassTable::getclass(this->expr->get_type());
    emit_push(SELF, str);
    ref_tracer.StackAllocTemp();
    for (auto i = this->actual->first(); this->actual->more(i); i = this->actual->next(i)){
        Expression sub_expr = this->actual->nth(i);
        sub_expr->code(str, ref_tracer, self_class);
        emit_push(ACC, str);
        ref_tracer.StackAllocTemp();
        paramSize++;
    }
    this->expr->code(str, ref_tracer, self_class);
    emit_beqz(ACC, abortlabel, str);
    emit_load(T1, 2, ACC, str); // Dispatch Table
    emit_load(T1, type->dispatchTab.at(this->name), T1, str);
    emit_move(SELF, ACC, str);
    emit_jal(T1, str);
    emit_pop(SELF, str);
    ref_tracer.StackFreeTemps(paramSize);
    emit_branch(end, str);
    emit_label_def(abortlabel, str);
    // A0 -> filename
    emit_partial_load_address(ACC, str);
    stringtable.lookup_string(self_class->get_filename()->get_string())->code_ref(str);
    str << endl;
    // T1 -> lineno
    emit_load_imm(T1, line_number, str);
    emit_jal("_dispatch_abort", str);
    emit_label_def(end, str);
    str << "# END: " << this->get_line_number() << endl;
}

void cond_class::code(ostream& str, ReferenceTracer& ref_tracer, CgenNode* self_class)
{
    str << "# CONDITION: " << this->get_line_number() << endl;
    unsigned int truelabel = CgenClassTable::AllocLabel();
    unsigned int end = CgenClassTable::AllocLabel();
    this->pred->code(str, ref_tracer, self_class);
    emit_load_bool(T1, truebool, str);
    emit_beq(ACC, T1, truelabel, str);
    this->else_exp->code(str, ref_tracer, self_class);
    emit_branch(end, str);
    emit_label_def(truelabel, str);
    this->then_exp->code(str, ref_tracer, self_class);
    emit_label_def(end, str);
    str << "# END: " << this->get_line_number() << endl;
}

void loop_class::code(ostream& str, ReferenceTracer& ref_tracer, CgenNode* self_class)
{
    str << "# LOOP: " << this->get_line_number() << endl;
    unsigned int looplabel = CgenClassTable::AllocLabel();
    unsigned int end = CgenClassTable::AllocLabel();
    emit_label_def(looplabel, str);
    this->pred->code(str, ref_tracer, self_class);
    emit_load_bool(T1, truebool, str);
    emit_bne(ACC, T1, end, str);
    this->body->code(str, ref_tracer, self_class);
    emit_branch(looplabel, str);
    emit_label_def(end, str);
    // Need to empty the accumulator so that the loop will return nullptr
    emit_empty_reg(ACC, str);
    str << "# END: " << this->get_line_number() << endl;
}

void typcase_class::code(ostream& str, ReferenceTracer& ref_tracer, CgenNode* self_class)
{
    str << "# TYPE CASE: " << this->get_line_number() << endl;
    // Well, why don't we use a switch table?
    // Actually, we can't.
    // A switch table cannot check and dispatch subtyping.
    // Instead, it can only dispatch on a specifiec type.
    // So we will use traditional method instead
    unsigned int abortLabel = CgenClassTable::AllocLabel();
    unsigned int end = CgenClassTable::AllocLabel();
    this->expr->code(str, ref_tracer, self_class);
    // if $a0 is nullptr
    emit_beqz(ACC, abortLabel, str);
    emit_load(T1, 0, ACC, str); // extract class tag
    auto sort_cases = [](std::pair<branch_class*, CgenNode*> a, std::pair<branch_class*, CgenNode*> b){
        return a.second->get_tag() > b.second->get_tag(); // The greatest element comes first.
    };
    // First sort the branches.
    std::set<std::pair<branch_class*, CgenNode*>, decltype(sort_cases)> cases_set;
    for (auto i = this->cases->first(); this->cases->more(i); i = this->cases->next(i)){
        auto br = reinterpret_cast<branch_class*>(this->cases->nth(i));
        cases_set.insert({br, CgenClassTable::getclass(br->type_decl)});
    }
    for (auto e: cases_set){
        auto c = e.first;
        auto t = e.second;
        List<CgenNode>* child = t->get_children();
        unsigned int nextlabel = CgenClassTable::AllocLabel();
        unsigned int min = t->get_tag();
        while (child && child->tl() != nullptr) {
            child = child->tl(); // It's a heap, so the last one in the linked list is the biggest.
        }
        unsigned int max = child ? child->hd()->get_tag() : t->get_tag();
        emit_blti(T1, min, nextlabel, str);
        emit_bgti(T1, max, nextlabel, str);
        emit_push(ACC, str);
        ref_tracer.enterscope();
        ref_tracer.StackAlloc(c->name, c->type_decl);
        c->expr->code(str, ref_tracer, self_class);
        ref_tracer.exitscope();
        emit_addiu(SP, SP, 4, str);
        emit_branch(end, str);
        emit_label_def(nextlabel, str);
    }
    emit_jal("_case_abort", str);
    emit_label_def(abortLabel, str);
    // A0 -> filename
    emit_partial_load_address(ACC, str);
    stringtable.lookup_string(self_class->get_filename()->get_string())->code_ref(str);
    str << endl;
    // T1 -> lineno
    emit_load_imm(T1, line_number, str);
    emit_jal("_case_abort2", str);
    emit_label_def(end, str);
    str << "# END: " << this->get_line_number() << endl;
}

void block_class::code(ostream& str, ReferenceTracer& ref_tracer, CgenNode* self_class)
{
    str << "# BLOCK: " << this->get_line_number() << endl;
    for (auto i = this->body->first(); this->body->more(i); i = this->body->next(i)){
        this->body->nth(i)->code(str, ref_tracer, self_class);
    }
    str << "# END: " << this->get_line_number() << endl;
}

void let_class::code(ostream& str, ReferenceTracer& ref_tracer, CgenNode* self_class)
{
    str << "# LET: " << this->get_line_number() << endl;
    let_class* curr_expr = this;
    let_class* expr = nullptr; 
    unsigned int letsize = 0;
    unsigned int scopecount = 1;
    ref_tracer.enterscope();
    do {
        // Multiple let expression is basically a linked list where the body attribute is the next node.
        // Traverse the linked list and get the real expression
        // If it is a let expression, then we add a symbol and check the assignment types.


        // I DISCOVERED A CRITICAL ERROR IN MY SEMANT PHASE DURING CODEGEN.
        // AND I MUST SAY THIS AST DESIGN OF LET EXPRESSION IS A PIECE OF SHIT.
        // BUT IF I ALTER THE DESIGN OF THE AST I MUST REWRITE THE WHOLE AST INSTEAD OF THE PARSER.
        // GOOD JOB TO WHOEVER DESIGNED THIS.
        // :D

        auto scopeadd = [&]{
            // Add into scope
            emit_addiu(SP, SP, -4, str);
            if (curr_expr->type_decl == SELF_TYPE){
                if (ref_tracer.probe(curr_expr->identifier, nullptr)) {
                    ref_tracer.enterscope();
                    scopecount++;
                }
                ref_tracer.StackAlloc(curr_expr->identifier, self_class->get_name());
            }
            else{
                if (ref_tracer.probe(curr_expr->identifier, nullptr)) {
                    ref_tracer.enterscope();
                    scopecount++;
                }
                ref_tracer.StackAlloc(curr_expr->identifier, curr_expr->type_decl);
            }
        };

        if (typeid(*curr_expr->init) != typeid(no_expr_class)){
            curr_expr->init->code(str, ref_tracer, self_class);  
            scopeadd();
            emit_partial_store(ACC,  str);
            str << ref_tracer.code_ref(curr_expr->identifier) << endl;
        }
        else if (curr_expr->type_decl == Str) {
            emit_load_string(ACC, stringtable.lookup_string(""), str);
            scopeadd();
            emit_partial_store(ACC,  str);
            str << ref_tracer.code_ref(curr_expr->identifier) << endl;
        }
        else if (curr_expr->type_decl == Int) {
            emit_load_int(ACC, inttable.lookup_string("0"), str);
            scopeadd();
            emit_partial_store(ACC,  str);
            str << ref_tracer.code_ref(curr_expr->identifier) << endl;
        }
        else if (curr_expr->type_decl == Bool) {
            emit_load_bool(ACC, falsebool, str);
            scopeadd();
            emit_partial_store(ACC,  str);
            str << ref_tracer.code_ref(curr_expr->identifier) << endl;
        }
        else{
            scopeadd();
        }
        letsize++;
        expr = curr_expr;
    } while ( ( curr_expr = dynamic_cast<let_class*>(curr_expr->body) ) ); // This is an assignment expression used for going to next expression
    expr->body->code(str, ref_tracer, self_class);
    while (scopecount--)
        ref_tracer.exitscope();
    emit_addiu(SP, SP, letsize * WORD_SIZE, str);
    str << "# END: " << this->get_line_number() << endl;
}

void plus_class::code(ostream& str, ReferenceTracer& ref_tracer, CgenNode* self_class)
{
    str << "# PLUS: " << this->get_line_number() << endl;
    this->e1->code(str, ref_tracer, self_class);
    emit_jal("Object.copy", str);
    emit_push(ACC, str);
    ref_tracer.StackAllocTemp();
    this->e2->code(str, ref_tracer, self_class);
    emit_move(T2, ACC, str);
    emit_pop(ACC, str);
    ref_tracer.StackFreeTemp();
    emit_move(T1, ACC, str);
    emit_load(T1, 3, T1, str);
    emit_load(T2, 3, T2, str);
    emit_add(T1, T1, T2, str);
    emit_store(T1, 3, ACC, str);
    str << "# END: " << this->get_line_number() << endl;
}

void sub_class::code(ostream& str, ReferenceTracer& ref_tracer, CgenNode* self_class)
{
    str << "# SUB: " << this->get_line_number() << endl;
    this->e1->code(str, ref_tracer, self_class);
    emit_jal("Object.copy", str);
    emit_push(ACC, str);
    ref_tracer.StackAllocTemp();
    this->e2->code(str, ref_tracer, self_class);
    emit_move(T2, ACC, str);
    emit_pop(ACC, str);
    ref_tracer.StackFreeTemp();
    emit_move(T1, ACC, str);
    emit_load(T1, 3, T1, str);
    emit_load(T2, 3, T2, str);
    emit_sub(T1, T1, T2, str);
    emit_store(T1, 3, ACC, str);
    str << "# END: " << this->get_line_number() << endl;
}

void mul_class::code(ostream& str, ReferenceTracer& ref_tracer, CgenNode* self_class)
{
    str << "# MUL: " << this->get_line_number() << endl;
    this->e1->code(str, ref_tracer, self_class);
    emit_jal("Object.copy", str);
    emit_push(ACC, str);
    ref_tracer.StackAllocTemp();
    this->e2->code(str, ref_tracer, self_class);
    emit_move(T2, ACC, str);
    emit_pop(ACC, str);
    ref_tracer.StackFreeTemp();
    emit_move(T1, ACC, str);
    emit_load(T1, 3, T1, str);
    emit_load(T2, 3, T2, str);
    emit_mul(T1, T1, T2, str);
    emit_store(T1, 3, ACC, str);
    str << "# END: " << this->get_line_number() << endl;
}

void divide_class::code(ostream& str, ReferenceTracer& ref_tracer, CgenNode* self_class)
{
    str << "# DIVIDE: " << this->get_line_number() << endl;
    this->e1->code(str, ref_tracer, self_class);
    emit_jal("Object.copy", str);
    emit_push(ACC, str);
    ref_tracer.StackAllocTemp();
    this->e2->code(str, ref_tracer, self_class);
    emit_move(T2, ACC, str);
    emit_pop(ACC, str);
    ref_tracer.StackFreeTemp();
    emit_move(T1, ACC, str);
    emit_load(T1, 3, T1, str);
    emit_load(T2, 3, T2, str);
    emit_div(T1, T1, T2, str);
    emit_store(T1, 3, ACC, str);
    str << "# END: " << this->get_line_number() << endl;
}

void neg_class::code(ostream& str, ReferenceTracer& ref_tracer, CgenNode* self_class)
{
    str << "# NEG: " << this->get_line_number() << endl;
    this->e1->code(str, ref_tracer, self_class);
    emit_jal("Object.copy", str);
    emit_load(T1, 3, ACC, str);
    emit_neg(T1, T1, str);
    emit_store(T1, 3, ACC, str);
    str << "# END: " << this->get_line_number() << endl;
}

void lt_class::code(ostream& str, ReferenceTracer& ref_tracer, CgenNode* self_class)
{
    str << "# LT: " << this->get_line_number() << endl;
    unsigned int truelabel = CgenClassTable::AllocLabel();
    unsigned int end = CgenClassTable::AllocLabel();
    this->e1->code(str, ref_tracer, self_class);
    emit_push(ACC, str);
    ref_tracer.StackAllocTemp();
    this->e2->code(str, ref_tracer, self_class);
    emit_pop(T1, str);
    ref_tracer.StackFreeTemp();
    emit_load(ACC, 3, ACC, str);
    emit_load(T1, 3, T1, str);
    emit_blt(T1, ACC, truelabel, str);
    // False Branch     
    emit_load_bool(ACC, falsebool, str);
    emit_branch(end, str);
    // True Branch
    emit_label_def(truelabel, str);
    emit_load_bool(ACC, truebool, str);
    // End CodeGen
    emit_label_def(end, str);
    str << "# END: " << this->get_line_number() << endl;
}

void eq_class::code(ostream& str, ReferenceTracer& ref_tracer, CgenNode* self_class)
{
    str << "# EQ: " << this->get_line_number() << endl;
    unsigned int truelabel = CgenClassTable::AllocLabel();
    unsigned int end = CgenClassTable::AllocLabel();
    this->e1->code(str, ref_tracer, self_class);
    emit_push(ACC, str);
    ref_tracer.StackAllocTemp();
    this->e2->code(str, ref_tracer, self_class);
    emit_move(T1, ACC, str);
    emit_pop(T2, str);
    ref_tracer.StackFreeTemp();
    if (this->e1->get_type() == Int || this->e1->get_type() == Str || this->e1->get_type() == Bool) {
        // In semantic phase we already done type checking.
        emit_load_bool(ACC, truebool, str);
        emit_load_bool(A1, falsebool, str);
        emit_jal("equality_test", str); // As in cool-runtime.pdf
        emit_load_bool(T1, truebool, str);
        emit_beq(ACC, T1, truelabel, str);
    }
    else {
        emit_beq(T1, T2, truelabel, str);
    }
    // False Branch     
    emit_load_bool(ACC, falsebool, str);
    emit_branch(end, str);
    // True Branch
    emit_label_def(truelabel, str);
    emit_load_bool(ACC, truebool, str);
    // End CodeGen
    emit_label_def(end, str);
    str << "# END: " << this->get_line_number() << endl;
}

void leq_class::code(ostream& str, ReferenceTracer& ref_tracer, CgenNode* self_class)
{
    str << "# LEQ: " << this->get_line_number() << endl;
    unsigned int truelabel = CgenClassTable::AllocLabel();
    unsigned int end = CgenClassTable::AllocLabel();
    this->e1->code(str, ref_tracer, self_class);
    emit_push(ACC, str);
    ref_tracer.StackAllocTemp();
    this->e2->code(str, ref_tracer, self_class);
    emit_pop(T1, str);
    ref_tracer.StackFreeTemp();
    emit_load(ACC, 3, ACC, str);
    emit_load(T1, 3, T1, str);
    emit_bleq(T1, ACC, truelabel, str);
    // False Branch     
    emit_load_bool(ACC, falsebool, str);
    emit_branch(end, str);
    // True Branch
    emit_label_def(truelabel, str);
    emit_load_bool(ACC, truebool, str);
    // End CodeGen
    emit_label_def(end, str);
    str << "# END: " << this->get_line_number() << endl;
}

void comp_class::code(ostream& str, ReferenceTracer& ref_tracer, CgenNode* self_class)
{
    str << "# COMP: " << this->get_line_number() << endl;
    // I DONT GET IT, WHY DONT YOU JUST USE PRIMITIVE VALUE SUCH AS 0 OR 1 AS BOOL VALUE, INSTEAD OF USING TWO GOD DAMN MEMORY ADDRESSES
    unsigned int truelabel = CgenClassTable::AllocLabel();
    unsigned int end = CgenClassTable::AllocLabel();
    this->e1->code(str, ref_tracer, self_class);
    emit_load_bool(T1, truebool, str);
    emit_bne(ACC, T1, truelabel, str);
    emit_load_bool(ACC, falsebool, str);
    emit_branch(end, str);
    emit_label_def(truelabel, str);
    emit_move(ACC, T1, str);
    emit_label_def(end, str);
    str << "# END: " << this->get_line_number() << endl;
}

void int_const_class::code(ostream& str, ReferenceTracer& ref_tracer, CgenNode* self_class)
{
    str << "# INT_CONST: " << this->get_line_number() << endl;
    //
    // Need to be sure we have an IntEntry *, not an arbitrary Symbol
    //
    emit_load_int(ACC, inttable.lookup_string(token->get_string()), str);
    str << "# END: " << this->get_line_number() << endl;
}

void string_const_class::code(ostream& str, ReferenceTracer& ref_tracer, CgenNode* self_class)
{
    str << "# STR_CONST: " << this->get_line_number() << endl;
    emit_load_string(ACC, stringtable.lookup_string(token->get_string()), str);
    str << "# END: " << this->get_line_number() << endl;
}

void bool_const_class::code(ostream& str, ReferenceTracer& ref_tracer, CgenNode* self_class)
{
    str << "# BOOL_CONST: " << this->get_line_number() << endl;
    emit_load_bool(ACC, BoolConst(val), str);
    str << "# END: " << this->get_line_number() << endl;
}

void new__class::code(ostream& str, ReferenceTracer& ref_tracer, CgenNode* self_class)
{
    str << "# NEW: " << this->get_line_number() << endl;
    std::string newTypeName;
    if (this->type_name == SELF_TYPE){
        // Need to be dynamically created
        emit_load(T2, 0, SELF, str); // Class Tag
        emit_load_address(T1, "class_objTab", str);
        emit_sll(T2, T2, 3, str); // * 2 * 4(WORD_SIZE)
        emit_add(T1, T1, T2, str);
        emit_load(ACC, 0, T1, str); // Class_protObj
        emit_push(T1, str);
        emit_jal("Object.copy", str);
        emit_pop(T1, str);
        emit_load(T1, 1, T1, str); // Class_init

        emit_push(SELF, str);
        emit_push(ACC, str);
        emit_move(SELF, ACC, str);
        emit_jalr(T1, str); // Jump to Class_init
        emit_pop(ACC, str);
        emit_pop(SELF, str);
        str << "# END: " << this->get_line_number() << endl;
        return;
    }
    else if (this->type_name == Str) {
        emit_load_string(ACC, stringtable.lookup_string(""), str);
        emit_jal("Object.copy",str);
        return;
    }
    else if (this->type_name == Int) {
        emit_load_int(ACC, inttable.lookup_string("0"), str);
        emit_jal("Object.copy",str);
        return;
    }
    else if (this->type_name == Bool) {
        emit_load_bool(ACC, falsebool, str);
        emit_jal("Object.copy",str);
        return;
    }
    newTypeName = this->type_name->get_string();
    emit_load_address(ACC, (newTypeName+"_protObj").c_str(), str);
    emit_jal("Object.copy", str);
    emit_push(SELF, str);
    emit_push(ACC, str);
    emit_move(SELF, ACC, str);
    emit_jal((newTypeName+"_init").c_str(), str);
    emit_pop(ACC, str);
    emit_pop(SELF, str);
    str << "# END: " << this->get_line_number() << endl;
}

void isvoid_class::code(ostream& str, ReferenceTracer& ref_tracer, CgenNode* self_class)
{
    str << "# ISVOID: " << this->get_line_number() << endl;
    unsigned int truelabel = CgenClassTable::AllocLabel();
    unsigned int endlabel = CgenClassTable::AllocLabel();
    this->e1->code(str, ref_tracer, self_class);
    emit_beqz(ACC, truelabel, str);
    emit_load_bool(ACC, falsebool, str);
    emit_branch(endlabel, str);
    emit_label_def(truelabel, str);
    emit_load_bool(ACC, truebool, str);
    emit_label_def(endlabel, str);
    str << "# END: " << this->get_line_number() << endl;
}

void no_expr_class::code(ostream& str, ReferenceTracer& ref_tracer, CgenNode* self_class)
{
    str << "# NOEXPR: " << this->get_line_number() << endl;
    // Pass
    str << "# END: " << this->get_line_number() << endl;
}

void object_class::code(ostream& str, ReferenceTracer& ref_tracer, CgenNode* self_class)
{
    str << "# OBJECT: " << this->get_line_number() << endl;
    if (this->name == self){
        emit_move(ACC, SELF, str);
        str << "# END: " << this->get_line_number() << endl;
        return;
    }
    emit_partial_load(ACC, str);
    str << ref_tracer.code_ref(this->name) << endl;
    str << "# END: " << this->get_line_number() << endl;
}
