#include <stdlib.h>
#include <stdio.h>
#include <stdarg.h>
#include "cool-tree.h"
#include "semant.h"
#include "utilities.h"

extern int semant_debug;
extern char *curr_filename;

std::unordered_map<Symbol, Class_> SemanticChecker::symtocls;
int SemanticChecker::errors = 0;

ostream& SemanticChecker::semant_error(Class_ cls){
    return SemanticChecker::semant_error(cls->get_filename(), cls);
}

ostream& SemanticChecker::semant_error(Class_ cls, const tree_node *t){
    errors++;
    return cerr << cls->get_filename() << ':' << t->get_line_number() << ": ";
}

ostream& SemanticChecker::semant_error(Symbol filename, const tree_node *t){
    errors++;
    return cerr << filename << ':' << t->get_line_number() << ": ";
}

ostream& SemanticChecker::semant_error()
{                                                             
    errors++;
    return cerr; 
}    

//////////////////////////////////////////////////////////////////////
//
// Symbols
//
// For convenience, a large number of symbols are predefined here.
// These symbols include the primitive type and method names, as well
// as fixed names used by the runtime system.
//
//////////////////////////////////////////////////////////////////////
static Symbol
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

void class__class::add_parent(const Class_ cls)
{
    class__class *par = reinterpret_cast<class__class *>(cls);
    this->parents = par->parents;
    this->parents.push_front(reinterpret_cast<Class_>(par));
    this->parents_set.insert(this->parents.begin(), this->parents.end());
}

bool class__class::operator<=(const Class__class &cls) const
{
    return this->parents_set.contains(const_cast<Class__class *>(&cls)) || this == &cls;
}

Class__class &class__class::upper_bound(const Class__class &cls) const
{
    const class__class *_cls = reinterpret_cast<const class__class *>(&cls);
    if (*this <= *_cls)
        return const_cast<class__class&>(*_cls);
    if (*_cls <= *this)
        return const_cast<class__class&>(*this);
    std::list<Class_>::const_iterator it1 = this->parents.cend(), it2 = _cls->parents.cend();
    for (it1--, it2--; *it1 == *it2; it1--, it2--) {
        if (it1 == this->parents.cbegin()) return **it1;
        if (it2 == _cls->parents.cbegin()) return **it2;
    }
    return **++it1;
}

SemanticChecker::SemanticChecker(Classes classes) 
{
    this->ast_root = classes;
    this->install_basic_classes();
    this->generate_inheritance_graph();
}
// Recursively initalize parent classes
void SemanticChecker::init_parents_and_methods(Class_ cls, std::unordered_set<Class_> &visited, std::unordered_map<Symbol, Class_> &symtocls)
{
    Class_ par;
    if (!symtocls.contains(cls->get_parent_name())) {
        semant_error(cls) << "Class " << cls->get_name() << " inherits from non existent class " << cls->get_parent_name() << endl;
        throw 0;
    }
    visited.insert(cls);
    par = symtocls.at(cls->get_parent_name());
    if (!visited.contains(par))
    {
        // Recursive call
        init_parents_and_methods(par, visited, symtocls);
    }
    if (*par <= *cls){
        semant_error(par) << "Found hierarchy cycle";
        throw 0;
    }
    cls->add_parent(par);
    cls->copy_parent_features(par);
    Features features = cls->get_features();
    for (auto i = features->first(); features->more(i); i = features->next(i))
    {
        Feature feature = features->nth(i);
        method_class *method = dynamic_cast<method_class *>(feature);
        if (method)
        {
            ArgList args;
            Formals formals = method->get_formals();
            const Method *par_method = nullptr;
            const std::list<Variable> *par_args = nullptr;
            ArgList::const_iterator par_args_it;
            if (par->has_method(method->get_name()))
            {
                // Initialize parent method vars
                par_method = &par->get_method(method->get_name());
                par_args = &par_method->get_args();
                par_args_it = par_args->cbegin();
                if (par_method->get_retn_type().get_symbol() != method->get_return_type()){
                    semant_error(cls, method) << "Redefined method " << method->get_name() << " has different return type." << endl;
                    throw 0;
                }
                if (par_method->get_args().size() != (size_t)formals->len()){
                    semant_error(cls, method) << "Redefined method " << method->get_name() << " has different number of parameters." << endl;
                    throw 0;
                }
            }
            for (auto i = formals->first(); formals->more(i); i = formals->next(i))
            {
                auto f = formals->nth(i);
                if (par_method)
                {
                    auto original_type = par_args_it++->get_type().get_class()->get_name();
                    if (original_type != f->get_type()){
                        semant_error(cls, method) << "Redefined method " << method->get_name() << ", parameter type " << f->get_type() << " is different from original type " << original_type << endl;
                        throw 0;
                    }
                }
                args.push_back(Variable(f->get_name(), Type(f->get_type())));
            }
            if(!has_class(method->get_return_type()) && method->get_return_type() != SELF_TYPE){
                semant_error(cls, method) << "Type " << method->get_return_type() << " not found." << endl;
                cls->add_method(method->get_name(), Method(Object, std::move(args)));
                continue;
            }
            cls->add_method(method->get_name(), Method(method->get_return_type(), std::move(args)));
            continue;
        }
        // If not a method, then it's an attribute;
        attr_class *cls_attr = reinterpret_cast<attr_class *>(feature);
        if (cls_attr->get_name() == self){
            semant_error(cls, cls_attr) << "'self' cannot be the name of an attribute" << endl;
            throw 0;
        }
        if (par->get_symtab().probe(cls_attr->get_name())){
            semant_error(cls, cls_attr) << "Attribute redefinition: " << cls_attr->get_name() << "\n";
            throw 0;
        }
        cls->get_symtab().add(cls_attr->get_name(), cls_attr->get_type());
    }
}

void SemanticChecker::generate_inheritance_graph()
{
    bool bRedeclared = false;
    std::unordered_set<Class_> visited;
    std::unordered_set<Symbol> basic_classes_sym = {Object, Int, Bool, Str, IO};
    this->symtocls.insert({SELF_TYPE, nullptr}); // SELF_TYPE is considered to be a decleared class
    // Init cache
    for (auto i = this->ast_root->first(); this->ast_root->more(i); i = this->ast_root->next(i))
    {
        Class_ cur_class = this->ast_root->nth(i);
        if (basic_classes_sym.contains(cur_class->get_name()) && !this->basic_classes_set.contains(cur_class)){
            semant_error(cur_class) << "Basic class " << cur_class->get_name() << " redefined." << std::endl;
            bRedeclared = true;
            continue; // Skip the redecleared one and continue
        }
        if (this->symtocls.contains(cur_class->get_name()))
        {
            semant_error(cur_class) << "Class " << cur_class->get_name() << " redefined." << std::endl;
            bRedeclared = true;
            continue; // Skip the redecleared one and continue
        }
        cur_class->get_symtab().enterscope(); // Initialize default symbal table.
        this->symtocls.insert({cur_class->get_name(), cur_class});
    }
    this->symtocls.erase(SELF_TYPE); // After redeclaration check complete, erase the SELF_TYPE Symbol.

    if (bRedeclared) throw 0; // Stop checking when class redeclaration detected.

    // Initialize basic class symbols
    std::list<Symbol> basic_class_sym = {Object, Int, Str, Bool, IO};
    for (auto cls_sym: basic_class_sym){
        Class_ _cls = this->symtocls.at(cls_sym);
        Features _features = _cls->get_features();
        if (_cls->get_name() != Object){
            _cls->add_parent(symtocls.at(_cls->get_parent_name())); 
            _cls->copy_parent_features(symtocls.at(_cls->get_parent_name()));
        }
        for (auto i = _features->first(); _features->more(i); i = _features->next(i))
        {
            Feature feature = _features->nth(i);
            method_class *method = dynamic_cast<method_class *>(feature);
            if (method)
            {
                ArgList args;
                Formals formals = method->get_formals();
                for (auto i = formals->first(); formals->more(i); i = formals->next(i))
                {
                    auto f = formals->nth(i);
                    args.push_back(Variable(f->get_name(), f->get_type()));
                }
                _cls->add_method(method->get_name(), Method(method->get_return_type(), std::move(args)));
                continue;
            }
            attr_class *_attr = reinterpret_cast<attr_class *>(feature);
            _cls->get_symtab().add(_attr->get_name(), _attr->get_type() == prim_slot ? Type(No_type) : _attr->get_type());
        }
        visited.insert(_cls);
    }

    for (auto i = this->ast_root->first(); this->ast_root->more(i); i = this->ast_root->next(i))
    {
        Class_ cls = this->ast_root->nth(i);
        if (visited.contains(cls))
            continue;
        if (cls->get_parent_name() == No_class)
        {
            cls->add_parent(this->symtocls.at(Object));
            continue;
        }
        if (cls->get_parent_name() == Int || cls->get_parent_name() == Str || cls->get_parent_name() == Bool)
        {
            semant_error(cls) << "Class " << cls->get_name() << " cannot inherits from " << cls->get_parent_name() << endl;
            throw 0;
        }
        init_parents_and_methods(cls, visited, this->symtocls);
    }
}

Class_ SemanticChecker::get_class(Symbol sym) 
{
    if (!symtocls.contains(sym)){
        SemanticChecker::semant_error() << "Class " << sym << " not found." << endl;
        return nullptr;
    }
    return symtocls.at(sym);
}

bool SemanticChecker::has_class(Symbol sym) 
{
    return symtocls.contains(sym);
}

void SemanticChecker::install_basic_classes()
{
    // The tree package uses these globals to annotate the classes built below.
    // curr_lineno  = 0;
    Symbol filename = stringtable.add_string("<basic class>");

    // The following demonstrates how to create dummy parse trees to
    // refer to basic Cool classes.  There's no need for method
    // bodies -- these are already built into the runtime system.

    // IMPORTANT: The results of the following expressions are
    // stored in local variables.  You will want to do something
    // with those variables at the end of this method to make this
    // code meaningful.

    //
    // The Object class has no parent class. Its methods are
    //        abort() : Object    aborts the program
    //        type_name() : Str   returns a string representation of class name
    //        copy() : SELF_TYPE  returns a copy of the object
    //
    // There is no need for method bodies in the basic classes---these
    // are already built in to the runtime system.

    Class_ Object_class =
        class_(Object,
               No_class,
               append_Features(
                   append_Features(
                       single_Features(method(cool_abort, nil_Formals(), Object, no_expr())),
                       single_Features(method(type_name, nil_Formals(), Str, no_expr()))),
                   single_Features(method(copy, nil_Formals(), SELF_TYPE, no_expr()))),
               filename);

    //
    // The IO class inherits from Object. Its methods are
    //        out_string(Str) : SELF_TYPE       writes a string to the output
    //        out_int(Int) : SELF_TYPE            "    an int    "  "     "
    //        in_string() : Str                 reads a string from the input
    //        in_int() : Int                      "   an int     "  "     "
    //
    Class_ IO_class =
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
               filename);

    //
    // The Int class has no methods and only a single attribute, the
    // "val" for the integer.
    //
    Class_ Int_class =
        class_(Int,
               Object,
               single_Features(attr(val, prim_slot, no_expr())),
               filename);

    //
    // Bool also has only the "val" slot.
    //
    Class_ Bool_class =
        class_(Bool, Object, single_Features(attr(val, prim_slot, no_expr())), filename);

    //
    // The class Str has a number of slots and operations:
    //       val                                  the length of the string
    //       str_field                            the string itself
    //       length() : Int                       returns length of the string
    //       concat(arg: Str) : Str               performs string concatenation
    //       substr(arg: Int, arg2: Int): Str     substring selection
    //
    Class_ Str_class =
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
               filename);

    this->basic_classes_set = std::unordered_set<Class_>({Object_class, IO_class, Int_class, Bool_class, Str_class});
    this->ast_root = append_Classes(this->ast_root, single_Classes(Object_class));
    this->ast_root = append_Classes(this->ast_root, single_Classes(IO_class));
    this->ast_root = append_Classes(this->ast_root, single_Classes(Int_class));
    this->ast_root = append_Classes(this->ast_root, single_Classes(Bool_class));
    this->ast_root = append_Classes(this->ast_root, single_Classes(Str_class));
}

Type::Type(Symbol sym){
    if (sym == No_type) { *this = Type(NULL, false); return; }
    if (sym == SELF_TYPE) { *this = Type(NULL, true); return; }
    if (!SemanticChecker::has_class(sym)){
        SemanticChecker::semant_error() << "Type " << sym << " not found." << endl; // Should never be called.
        *this = Type(Object);
        return;
    }
    *this = Type(SemanticChecker::get_class(sym));
}

bool Type::operator<=(const Type &t) const
{
    if (this->cls == NULL || t.get_class() == NULL)
    {
        SemanticChecker::semant_error() << "Tried to compare types with no_type." << endl;
        return false;
    }
    if (t.isSelf())
    {
        if (this->bIsSelf)
        {
            return this->cls == t.get_class(); // Self_type(c) <= Self_type(c) => true
        }
        return false; // T <= Self_type(c) => false
    }
    return *this->cls <= *t.get_class(); // Self_type(c) <= T => C <= T or just C <= T
}

Type Type::upper_bound(const Type &t) const
{
    if (this->bIsSelf && t.isSelf())
    {
        if (this->cls == t.get_class())
            return *this;
    }
    return Type(&this->cls->upper_bound(*t.get_class()));
}

const Class_ Type::get_class() const {return cls;}
Symbol Type::get_symbol() const {return this->bIsSelf ? SELF_TYPE : cls->get_name();}
bool Type::isSelf() const {return bIsSelf;}
bool Type::isNoType() const {return !bIsSelf && cls == nullptr;}
bool Type::operator==(const Type& t) const {return this->bIsSelf==t.bIsSelf && this->cls==t.cls;}
bool Type::operator!=(const Type& t) const {return !this->operator==(t);}


Classes SemanticChecker::get_ast() const
{
    return this->ast_root;
}

void class__class::type_check(SymTab& symtab, Class_ curr_class) const {
    Type self_type = Type(curr_class, true);
    symtab.add(self, self_type);
    for (auto i = this->features->first(); this->features->more(i); i = this->features->next(i)) {
        this->features->nth(i)->type_check(symtab, self_type);
    }
}

Type method_class::type_check(SymTab& symtab, const Type& self_type) const {
    const Method method_info = self_type.get_class()->get_method(this->get_name());
    const ArgList& args = method_info.get_args();
    Type retn_type = method_info.get_retn_type();
    symtab.enterscope();
    for (const auto& arg: args){
        if (arg.get_name() == self){
            SemanticChecker::semant_error(self_type.get_class(), this) << "In method " << this->get_name() << ": Parameter cannot be named 'self'" << endl;
            return Type(Object); // For error handling
        }
        if (arg.get_type() == SELF_TYPE)
        {
            SemanticChecker::semant_error(self_type.get_class(), this) << "In method " << this->get_name() << ": Parameter cannot be typed 'SELF_TYPE'" << endl;
            return Type(Object); // For error handling
        }
        if (symtab.probe(arg.get_name())){
            // The symbol table is a hashmap. It will be more efficient to detect duplicated method name compared to doing it in ArgList.
            // So the duplicate parameter checking has not done in method table construction phase.
            // Instead, we do it here.
            SemanticChecker::semant_error(self_type.get_class(), this) << "Duplicated parameter name " << arg.get_name() << " of method " << this->get_name() << endl;
            return Type(Object);
        }
        symtab.add(arg.get_name(), arg.get_type()); 
    }
    Type expr_type = this->expr->type_check(symtab, self_type);
    Type check_type = retn_type.isSelf() ? self_type : retn_type;
    if (!(expr_type <= check_type)){
        SemanticChecker::semant_error(self_type.get_class(), this) << "Inferred return type " << expr_type.get_symbol() << " of method " << this->get_name() << " does not conform to declared return type " << retn_type.get_symbol() << endl;
    }
    symtab.exitscope();
    return retn_type;
}

Type attr_class::type_check(SymTab& symtab, const Type& self_type) const {
    Type attr_type = this->get_type();
    Type init_type = this->get_expr()->type_check(symtab, self_type);

    if (attr_type.isSelf()){
        attr_type = self_type;
    }
    
    if (!init_type.isNoType() && !(init_type <= attr_type)){
        SemanticChecker::semant_error(self_type.get_class(), this) << "Invalid expression assignment: " << attr_type.get_symbol() << " = " << init_type.get_symbol() << endl;
        return attr_type;
    }
    return attr_type;
}

const Symbol attr_class::get_name() const {return this->name;}
const Symbol method_class::get_name() const {return this->name;}

Type no_expr_class::type_check(SymTab&, const Type&) {
    return Type(No_type);
}

Type assign_class::type_check(SymTab& symtab, const Type& self_type) {
    Type lval(No_type);
    Type rval = this->expr->type_check(symtab, self_type);
    if (this->name == self){
        SemanticChecker::semant_error(self_type.get_class(), this) << "Cannot assign to 'self'." << endl;
    }
    if (!symtab.find(this->name, &lval)){
        SemanticChecker::semant_error(self_type.get_class(), this) << "Variable " << this->name << " is not defined" << endl;
    }
    if (!(rval <= lval)){
        SemanticChecker::semant_error(self_type.get_class(), this) << "Invalid expression assignment: " << lval.get_symbol() << " = " << rval.get_symbol() << endl;
    }
    this->set_type(rval.get_symbol());
    return rval;
}

Type static_dispatch_class::type_check(SymTab& symtab, const Type& self_type) {
    Type disp_from = this->expr->type_check(symtab, self_type); // There's no need to cast the type from self_type to specific class
                                                                // Since we build a node Object("self") in AST.
                                                                // So the type is gonna be SELF_TYPE(c)
                                                                // And it is fine to treat it like a regular one.
    Type cast_to = SemanticChecker::get_class(this->type_name);
    if (!(disp_from <= cast_to)){
        SemanticChecker::semant_error(self_type.get_class(), this) << "Incompatible types between the call expression and " << cast_to.get_symbol() << endl;
        return Type(Object);
    }
    if (!cast_to.get_class()->has_method(this->name)){
        SemanticChecker::semant_error(self_type.get_class(), this) << "Method " << this->name << " not found." << endl;
        return Type(Object);
    }
    Method method = cast_to.get_class()->get_method(this->name);
    const ArgList& args = method.get_args();
    Type retn_type = method.get_retn_type();
    ArgList::const_iterator args_it = args.cbegin();
    // Validate args 
    if ((size_t)this->actual->len() != args.size()){
        SemanticChecker::semant_error(self_type.get_class(), this) << "Arguments number mismatch." << endl;
        return Type(Object);
    }
    for (auto i = this->actual->first(); 
        this->actual->more(i) && args_it != args.cend(); 
        i = this->actual->next(i), args_it++){
            if (!(this->actual->nth(i)->type_check(symtab, self_type) <= args_it->get_type())){
                SemanticChecker::semant_error(self_type.get_class(), this) << "Invalid argument type for " << args_it->get_type().get_symbol() << " in method call" << endl;
                return Type(Object);
            }
    }
    if (retn_type.isSelf()){
        this->set_type(disp_from.get_symbol());
        return disp_from;
    }
    this->set_type(retn_type.get_symbol());
    return retn_type;
}

Type dispatch_class::type_check(SymTab& symtab, const Type& self_type) {
    Type disp_from = this->expr->type_check(symtab, self_type); // There's no need to cast the type from self_type to specific class
                                                                // Since we build a node Object("self") in AST.
                                                                // So the type is gonna be SELF_TYPE(c)
                                                                // And it is fine to treat it like a regular one.
    if (!disp_from.get_class()->has_method(this->name)){
        SemanticChecker::semant_error(self_type.get_class(), this) << "Method " << this->name << " not found" << endl;
        return Type(Object);
    }
    Method method = disp_from.get_class()->get_method(this->name);
    const ArgList& args = method.get_args();
    Type retn_type = method.get_retn_type();
    ArgList::const_iterator args_it = args.cbegin();
    // Validate args 
    if ((size_t)this->actual->len() != args.size()){
        SemanticChecker::semant_error(self_type.get_class(), this) << "Arguments number mismatch." << endl;
        return Type(Object);
    }
    for (auto i = this->actual->first(); 
        this->actual->more(i) && args_it != args.cend(); 
        i = this->actual->next(i), args_it++){
            if (!(this->actual->nth(i)->type_check(symtab, self_type) <= args_it->get_type())){
                SemanticChecker::semant_error(self_type.get_class(), this) << "Invalid argument type for " << args_it->get_type().get_symbol() << " in method call" << endl;
                return Type(Object);
            }
    }
    if (retn_type.isSelf()){
        this->set_type(disp_from.get_symbol());
        return disp_from;
    }
    this->set_type(retn_type.get_symbol());
    return retn_type;
}

Type cond_class::type_check(SymTab& symtab, const Type& self_type) {
    if (this->pred->type_check(symtab, self_type) != Type(Bool)){
        SemanticChecker::semant_error(self_type.get_class(), this) << "Expression is not boolean." << endl;
    }
    Type expr1 = this->then_exp->type_check(symtab, self_type);
    Type expr2 = this->else_exp->type_check(symtab, self_type);
    Type result = this->then_exp->type_check(symtab, self_type).upper_bound(this->else_exp->type_check(symtab, self_type));
    this->set_type(result.get_symbol());
    return result;
}

Type loop_class::type_check(SymTab& symtab, const Type& self_type) {
    if (this->pred->type_check(symtab, self_type) != Type(Bool)){
        SemanticChecker::semant_error(self_type.get_class(), this) << "Expression must be boolean." << endl;
    }
    this->body->type_check(symtab,self_type);
    set_type(Object);
    return Type(Object);
}

Type typcase_class::type_check(SymTab& symtab, const Type& self_type) {
    Type result = Type(No_type);
    std::unordered_set<Symbol> typeset;
    for (auto i = this->cases->first(); this->cases->more(i); i = this->cases->next(i)){
        Case _case = this->cases->nth(i);
        if (typeset.contains(_case->get_type())){
            SemanticChecker::semant_error(self_type.get_class(), this) << "Duplicated case " << _case->get_type() << endl;
            // Ignore the error and continue, because we want to check the inner expression.
        }
        typeset.insert(_case->get_type());
        symtab.enterscope();
        symtab.add(_case->get_name(), _case->get_type());
        Type expr_type = this->cases->nth(i)->get_expr()->type_check(symtab, self_type);
        symtab.exitscope();
        if (result.isNoType()){
            result = expr_type;
            continue; 
        }
        result = result.upper_bound(expr_type);
    }
    this->expr->type_check(symtab, self_type);
    this->set_type(result.get_symbol());
    return result;
}

Type block_class::type_check(SymTab& symtab, const Type& self_type) {
    Type result(No_type);
    for (auto i = this->body->first(); this->body->more(i); i = this->body->next(i)){
        result = this->body->nth(i)->type_check(symtab, self_type);
    }
    this->set_type(result.get_symbol());
    return result;
}

Type let_class::type_check(SymTab& symtab, const Type& self_type) {
    let_class* curr_expr = this;
    let_class* expr = nullptr; 
    size_t scopecount = 1;
    symtab.enterscope();
    do {
        // Multiple let expression is basically a linked list where the body attribute is the next node.
        // Traverse the linked list and get the real expression
        // If it is a let expression, then we add a symbol and check the assignment types.
        Type target_type(curr_expr->type_decl);
        Type init_type(curr_expr->init->type_check(symtab, self_type));
        if (target_type.isSelf())
            target_type = self_type;
        if (curr_expr->identifier == self){
            SemanticChecker::semant_error(self_type.get_class(), this) << "Identifier can't be named self." << endl;
        }
        if (symtab.probe(curr_expr->identifier, nullptr)){
            symtab.enterscope();
            scopecount++;
        }
        if (!init_type.isNoType() && !(init_type <= target_type)){
            SemanticChecker::semant_error(self_type.get_class(), this) << "Incompatible types: " << init_type.get_symbol() << " and " << target_type.get_symbol() << endl;
        }
        symtab.add(curr_expr->identifier, std::move(target_type));
        expr = curr_expr;
    } while ( ( curr_expr = dynamic_cast<let_class*>(curr_expr->body) ) ); // This is an assignment expression used for going to next expression

    // Apply the result to every let expression of the linked list
    Type result = expr->body->type_check(symtab, self_type);
    curr_expr = this;
    do {
        curr_expr->set_type(result.get_symbol());
    } while ((curr_expr = dynamic_cast<let_class*>(curr_expr->body)));
    expr->body->set_type(result.get_symbol());
    while (scopecount--)
        symtab.exitscope();
    return result;
}

Type plus_class::type_check(SymTab& symtab, const Type& self_type) {
    bool bFailed = false;
    if (this->e1->type_check(symtab, self_type) != Type(Int) ){
        SemanticChecker::semant_error(self_type.get_class(), this) << "Expression 1 is not Int." << endl;
        bFailed = true;
    }
    if (this->e2->type_check(symtab, self_type) != Type(Int)){
        SemanticChecker::semant_error(self_type.get_class(), this) << "Expression 2 is not Int." << endl;
        bFailed = true;
    }
    Type result = bFailed ? Type(Object) : Type(Int);
    set_type(result.get_symbol());
    return result;
}

Type sub_class::type_check(SymTab& symtab, const Type& self_type) {
    bool bFailed = false;
    if (this->e1->type_check(symtab, self_type) != Type(Int) ){
        SemanticChecker::semant_error(self_type.get_class(), this) << "Expression 1 is not Int." << endl;
        bFailed = true;
    }
    if (this->e2->type_check(symtab, self_type) != Type(Int)){
        SemanticChecker::semant_error(self_type.get_class(), this) << "Expression 2 is not Int." << endl;
        bFailed = true;
    }
    Type result = bFailed ? Type(Object) : Type(Int);
    set_type(result.get_symbol());
    return result;
}

Type mul_class::type_check(SymTab& symtab, const Type& self_type) {
    bool bFailed = false;
    if (this->e1->type_check(symtab, self_type) != Type(Int) ){
        SemanticChecker::semant_error(self_type.get_class(), this) << "Expression 1 is not Int." << endl;
        bFailed = true;
    }
    if (this->e2->type_check(symtab, self_type) != Type(Int)){
        SemanticChecker::semant_error(self_type.get_class(), this) << "Expression 2 is not Int." << endl;
        bFailed = true;
    }
    Type result = bFailed ? Type(Object) : Type(Int);
    set_type(result.get_symbol());
    return result;
}

Type divide_class::type_check(SymTab& symtab, const Type& self_type) {
    bool bFailed = false;
    if (this->e1->type_check(symtab, self_type) != Type(Int) ){
        SemanticChecker::semant_error(self_type.get_class(), this) << "Expression 1 is not Int." << endl;
        bFailed = true;
    }
    if (this->e2->type_check(symtab, self_type) != Type(Int)){
        SemanticChecker::semant_error(self_type.get_class(), this) << "Expression 2 is not Int." << endl;
        bFailed = true;
    }
    Type result = bFailed ? Type(Object) : Type(Int);
    set_type(result.get_symbol());
    return result;
}

Type neg_class::type_check(SymTab& symtab, const Type& self_type) {
    if (this->e1->type_check(symtab, self_type) != Type(Int)){
        SemanticChecker::semant_error(self_type.get_class(), this) << "Expression must be Int." << endl;
        set_type(Object);
        return Type(Object);
    }
    set_type(Int);
    return Type(Int);
}

Type lt_class::type_check(SymTab& symtab, const Type& self_type) {
    bool bFailed = false;
    if (this->e1->type_check(symtab, self_type) != Type(Int) ){
        SemanticChecker::semant_error(self_type.get_class(), this) << "Expression 1 is not Int." << endl;
        bFailed = true;
    }
    if (this->e2->type_check(symtab, self_type) != Type(Int)){
        SemanticChecker::semant_error(self_type.get_class(), this) << "Expression 2 is not Int." << endl;
        bFailed = true;
    }
    Type result = bFailed ? Type(Object) : Type(Bool);
    set_type(result.get_symbol());
    return result;
}

Type eq_class::type_check(SymTab& symtab, const Type& self_type) {
    Type type1 = this->e1->type_check(symtab, self_type);
    Type type2 = this->e2->type_check(symtab, self_type);
    if ((type1 == Type(Int) || type1 == Type(Str) || type1 == Type(Bool) || type2 == Type(Int) || type2 == Type(Str) || type2 == Type(Bool)) && type1 != type2){
        SemanticChecker::semant_error(self_type.get_class(), this) << "Types are incompatible." << endl;
        set_type(Object);
        return Type(Object);
    }
    set_type(Bool);
    return Type(Bool);
}

Type leq_class::type_check(SymTab& symtab, const Type& self_type) {
    bool bFailed = false;
    if (this->e1->type_check(symtab, self_type) != Type(Int) ){
        SemanticChecker::semant_error(self_type.get_class(), this) << "Expression 1 is not Int." << endl;
        bFailed = true;
    }
    if (this->e2->type_check(symtab, self_type) != Type(Int)){
        SemanticChecker::semant_error(self_type.get_class(), this) << "Expression 2 is not Int." << endl;
        bFailed = true;
    }
    Type result = bFailed ? Type(Object) : Type(Bool);
    set_type(result.get_symbol());
    return result;
}

Type comp_class::type_check(SymTab& symtab, const Type& self_type) {
    if (this->e1->type_check(symtab, self_type) != Type(Bool)){
        SemanticChecker::semant_error(self_type.get_class(), this) << "Expression must be Bool." << endl;
        set_type(Object);
        return Type(Object);
    }
    set_type(Bool);
    return Type(Bool);
}

Type int_const_class::type_check(SymTab& symtab, const Type& self_type) {
    this->set_type(Int);
    return Type(Int);
}

Type bool_const_class::type_check(SymTab& symtab, const Type& self_type) {
    this->set_type(Bool);
    return Type(Bool);
}

Type string_const_class::type_check(SymTab& symtab, const Type& self_type) {
    this->set_type(Str);
    return Type(Str);
}

Type new__class::type_check(SymTab& symtab, const Type& self_type) {
    if (this->type_name == SELF_TYPE){
        set_type(SELF_TYPE);
        return self_type;
    }
    if (!SemanticChecker::has_class(this->type_name)){
        SemanticChecker::semant_error(self_type.get_class(), this) << "Type " << this->type_name << " not found." << endl;
        set_type(Object);
        return Type(Object);
    }
    Type result(this->type_name);
    if (result.isSelf()) result = self_type;
    this->set_type(result.get_symbol());
    return Type(result);
}

Type object_class::type_check(SymTab& symtab, const Type& self_type) {
    Type result(No_type);
    if (symtab.find(this->name, &result)){
        if (result.isSelf()){
            this->set_type(SELF_TYPE);
            return result;
        }
        this->set_type(result.get_symbol());
        return result;
    }
    SemanticChecker::semant_error(self_type.get_class(), this) << "Variable " << this->name << " not found." << endl;
    set_type(Object);
    return Type(Object);
}

Type isvoid_class::type_check(SymTab& symtab, const Type& self_type) {
    this->e1->type_check(symtab, self_type);
    this->set_type(Bool);
    return Type(Bool);
}

void program_class::semant()
{
    try {
        initialize_constants();
        SemanticChecker classtable(classes);
        Classes ast = classtable.get_ast();

        if (!classtable.has_class(Main)){
            classtable.semant_error() << "Class Main is not defined." << endl;
        }

        for (auto i = ast->first(); ast->more(i); i = ast->next(i))
        {
            // Every method should be type checked.
            Class_ cls = ast->nth(i);
            if (cls->get_name() == Object || cls->get_name() == Str || cls->get_name() == Bool || cls->get_name() == Int || cls->get_name() == IO){
                continue;
            }
            SymTab symboltable = cls->get_symtab();
            cls->type_check(symboltable, cls);
        }
    }
    catch(...){
        // Terminate the process when fatal error thrown.
    }

    if (SemanticChecker::errors) {
        // If it has errors, halt the compilation.
        cerr << "Compilation halted due to static semantic errors." << endl;
        exit(1);
    }
}
