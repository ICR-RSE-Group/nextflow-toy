#!/usr/bin/env python3

import sys
n = int(sys.argv[1])
code = sys.argv[2]
outdir = sys.argv[3]
for i in range(n):
    with open(f"{outdir}{code}_num{i+1}.txt", "w") as f:
        f.write(str(i+1))
        
