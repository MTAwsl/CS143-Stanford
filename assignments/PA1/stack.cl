(*
 *  CS164 Fall 94
 *
 *  Programming Assignment 1
 *    Implementation of a simple stack machine.
 *
 *  Skeleton file
 *)


class StackNode inherits A2I {
    item: Object;
    next: StackNode;

    init(i: Object, n: StackNode) : StackNode {
        {
            item <- i;
            next <- n; 
            self;
        }
    };

    push(o: Object) : StackNode {
        (new StackNode).init(o, self)
    };

    get(): Object { item };
    next(): StackNode { next };

    isEmpty() : Bool {
        isvoid item
    };

    toString() : String {
        let retStr: String <-
            case item of
                num : Int => i2a(num);
                cmd : String  => cmd;
            esac
        in
            if isvoid next then
                retStr.concat("\n")
            else
                retStr.concat("\n").concat(next.toString())
            fi
    };

};

class StackOperator inherits A2I {
    node: StackNode; 

    push(o: Object) : StackNode 
    {
        if isvoid node then node <- (new StackNode).init(o, node)
        else node <- node.push(o)
        fi
    };

    pop() : Object
    {
        let o : Object in
        {
            o <- node.get();
            node <- node.next();
            o; 
        }
    };

    toString() : String {
        node.toString()
    };

    evaluate() : Object {
        -- Type Checking
        if isvoid node then 0
        else let cmd: String <- case node.get() of i: Int => "nil"; s: String => s; esac 
        in {
            -- Operation
            if cmd = "+" then {
                pop();
                let a: Int <- case pop() of i: Int => i; esac, b: Int <- case pop() of i: Int => i; esac in {
                    push(a+b);
                };
            }
            else if cmd = "s" then {
                pop();
                let a: Object <- pop(), b: Object <- pop() in {
                    push(a);
                    push(b);
                };
            } else 0
            fi fi;
        }
        fi 
    };
};

class Main inherits IO {
    stack : StackOperator <- new StackOperator;
    
    handleCmd(s : String) : Bool {
       if isInt(s) then
       {
           stack.push(stack.a2i(s));
           true;
       }
       else if not(s.length() = 1) then false
       else
       {
            if s = "+" then {
                stack.push("+");
                true;
            }
            else if s = "s" then {
                stack.push("s");
                true;
            }
            else if s = "e" then 
            {
                stack.evaluate();
                true;
            }
            else if s = "d" then
            {
                out_string(stack.toString());
                true;
            }
            else if s = "x" then
            {
                out_string("Exited.\n");
                abort();
                true;
            }
            else false
            fi fi fi fi fi;
       } fi fi
    };

    and(b1 : Bool, b2 : Bool) : Bool {
        if b1 then b2 else false fi
    };

    isInt(s: String) : Bool {
       let result : Bool <- true, i : Int <- 0 in {
           if s.substr(0,1) = "-" then s <- s.substr(1, s.length()-1) else 0 fi;
           while (and(not(i = s.length()), result = true)) loop
           {
               let char : String <- s.substr(i, 1) in 
               {
                    result <- {
                        if char = "0" then true else
                        if char = "1" then true else
                        if char = "2" then true else
                        if char = "3" then true else
                        if char = "4" then true else
                        if char = "5" then true else
                        if char = "6" then true else
                        if char = "7" then true else
                        if char = "8" then true else
                        if char = "9" then true else
                        false
                        fi fi fi fi fi fi fi fi fi fi;
                    };
                    i <- i + 1;
               };
           } pool;
           result;
       }
    };

    main() : Object {
       let input : String, continue : Bool <- true in {
           while (continue) loop{ out_string("> ");
               input <- in_string();
               if input.length() = 0 then 0
               else if handleCmd(input) then true
               else
               {
                   out_string("Invalid!\n");
                   abort();
                   false;
               }
               fi fi;
           } pool;
       }
    };

};
