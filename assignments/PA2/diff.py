import os
import re

mine = os.popen("./lexer ../../examples/arith.cl").read().split('\n')
std = os.popen("lexer ../../examples/arith.cl").read().split('\n')

mineMap = dict() 
stdMap = dict() 

for line in mine:
    result = re.search(r"#(\d+) (.*)",line)
    if not result:
        continue
    lineno, content = result.groups()
    if not lineno in mineMap: 
        mineMap[lineno] = [content]
    else:
        mineMap[lineno].append(content)

for line in std:
    result = re.search(r"#(\d+) (.*)",line)
    if not result:
        continue
    lineno, content = result.groups()
    if not lineno in stdMap:
        stdMap[lineno] = [content]
    else:
        stdMap[lineno].append(content)

for lineno in mineMap.keys():
    if lineno not in stdMap:
        print(f"----{lineno}----")
        print('\n'.join(mineMap[lineno]))
        continue
    if mineMap[lineno] != stdMap[lineno]:
        print(f"----{lineno}----")
        print('\n'.join(mineMap[lineno]))
        print("--------------")
        print('\n'.join(stdMap[lineno]))

print(list(mineMap.keys())[-1])
print(list(stdMap.keys())[-1])
