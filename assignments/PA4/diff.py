import os
import re

def diff(file):
    mine = os.popen(f"./mysemant {file} 2>&1").read().split('\n')
    std = os.popen(f"lexer {file} | parser | semant 2>&1").read().split('\n')

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


if __name__ == '__main__':
    for file in os.listdir("../../examples/"):
        print(f"FILE: {file}")
        diff("../../examples/"+file)
