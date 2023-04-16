#include <iostream>
#include "symtab.h"

int main(int argc, char *argv[]) {
  // 
  // Create a mapping from strings to ints
  //

  SymbolTable<char *,int> *map = new SymbolTable<char *, int>();
  int result;
  char *Fred = "Fred";
  char *Mary = "Mary";
  char *Miguel = "Miguel";

  // enter a scope; required before any symbols can be added
  map->enterscope();
  
  // add a couple of entries mapping name to age.
  // note the second argument must be a pointer to an integer
  map->add(Fred, int(22));
  map->add(Mary, int(25));

  // add a scope, add more names:
  map->enterscope();
  map->add(Miguel, int(35));
  map->add(Mary, int(23));

  // check whether Fred is in the current scope; predicate is false
  std::cout << (map->probe(Fred) ? "Yes\n" : "No\n");

  // check whether Mary is in any scope; predicate is true
  std::cout << ((map->find(Mary)) ? "Yes\n" : "No\n");

  // print age of most-closely-nested Mary; note the
  // lookup returns a pointer to an integer.
  std::cout << (map->find(Mary,&result),result) << "\n";

  // check whether Miguel is in the current scope; predicate is true
  std::cout << (map->probe(Miguel) ? "Yes\n" : "No\n");

  // leave a scope
  map->exitscope();

  // print age of most-closely-nested Mary
  std::cout << (map->find(Mary, &result),result) << "\n";

  // check whether Fred is in the current scope; predicate is now true
  std::cout << (map->probe(Fred) ? "Yes\n" : "No\n");

  // check whether Miguel is in any scope; predicate is now false
  std::cout << (map->find(Miguel) ? "Yes\n" : "No\n");

  return 0;
 
}
