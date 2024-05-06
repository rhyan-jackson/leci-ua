def factorial_print(num):
    print(f'{num}', end=' ')
    for n in range(num-1, 0, -1):
        print(f'x {n}', end=' ')
        num *= n
    print(f'= {num}')
factorial_print(10)

def factorial(num):
    for n in range(num-1, 0, -1):
        num *= n
    return num

print(factorial(10))