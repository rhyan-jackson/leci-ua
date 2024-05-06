import sys
from subprocess import Popen
from subprocess import PIPE

if len(sys.argv) < 3:
    print('Correct usage: python3 <foo.py> <directory> <term>')
    exit()

term = sys.argv[2]
process = Popen("ls -la " + sys.argv[1], stdout=PIPE, shell=True)
return_code = process.wait()

for line in process.stdout.readlines():
    line = line.decode("utf-8")
    if term not in line:
        print(line.rstrip())