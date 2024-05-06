from fibonacci import fibonacci
from random import randint, uniform
from subprocess import Popen
from subprocess import PIPE

# Unit tests

def test_negative():
    print('Testing fibonacci func. behavior with n < 0.')
    for i in range(0, 50):
        random_negative = randint(-1000, -10)
        assert fibonacci(random_negative) == []

def test_0():
    print('Testing fibonacci func. behavior with n = 0.')
    assert fibonacci(0) == [0]

def test_1():
    print('Testing fibonacci func. behavior with n = 1.')
    assert fibonacci(1) == [0, 1]
    
def test_2():
    print('Testing fibonacci func. behavior with n = 2.')
    assert fibonacci(2) == [0, 1, 1]

def test_3():
    print('Testing fibonacci func. behavior with n = 3.')
    assert fibonacci(3) == [0, 1, 1, 2]
    

# Functional tests

def test_args_quantity():
    print('Testing code behavior if input has not the ideal quantity of arguments.')
    process = Popen("python3 fibonacci.py", stdout=PIPE, shell=True)
    process.wait()
    output = process.stdout.read().decode("utf-8")
    
    assert output.strip() == 'Correct usage: python3 <foo.py> <n>'
    
    
def test_n_integer():
    for x in range(0, 5):
        n = uniform(0, 10)
        print('Testing code behavior if n is not an integer.')
        process = Popen(f"python3 fibonacci.py {n}", stdout=PIPE, shell=True)
        process.wait()
        output = process.stdout.read().decode("utf-8")
    
    assert output.strip() == '<n> needs to be an integer.'