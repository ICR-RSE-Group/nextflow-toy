#!/usr/bin/env python3

import sys
n = int(sys.argv[1])
code = sys.argv[2]
outdir = sys.argv[3]
total = 0
for i in range(n):
    with open(f"{outdir}{code}_square{i+1}.txt", "r") as fr:        
        lines = fr.readlines()
        total += int(lines[0])
with open(f"{outdir}{code}_total.txt", "w") as fw:
    fw.write(str(total))
        
