#!/usr/bin/env python3

import sys
inpath = sys.argv[1]
code = sys.argv[2]
outdir = sys.argv[3]

#with open(f"{outdir}{code}_num{i}.txt", "r") as fr:
with open(f"{inpath}", "r") as fr:
    lines = fr.readlines()
    val = int(lines[0])
    sval = val**2
    with open(f"{outdir}{code}_square{val}.txt", "w") as fw:
        fw.write(str(sval))
        
