import os.path
import sys
import hashlib

if len(os.sys.argv) < 2:
    print(f"Usage: python3 {sys.argv[0]} filename")
    sys.exit(1)
    
fname = sys.argv[1]

if not os.path.exists(fname) or os.path.isdir(fname) or not os.path.isfile(fname):
    print(f"{fname} is not a filename.", file=sys.stderr)
    sys.exit(2)

h = hashlib.sha1()
with open(fname, 'rb') as file:
    while True:
        buffer = file.read(512)
        if len(buffer) == 0:
            break
        h.update(buffer)

print(h.hexdigest())