from fibonacci import fibonacci
from random import randint, uniform
from subprocess import Popen
from subprocess import PIPE

n = uniform(0, 10)
print('Testing code behavior if n is not an integer.')
process = Popen(f"python3 fibonacci.py {n}", stdout=PIPE, shell=True)
process.wait()
output = process.stdout.read().decode("utf-8")
input()