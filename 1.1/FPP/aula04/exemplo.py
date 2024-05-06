import sympy

prime_number = sympy.randprime(10**17, (10**18)-1)
print(f"Um número primo de 18 dígitos: {prime_number}")



def is_prime(number):
    if number <= 1:
        return False
    if number <= 3:
        return True

    if number % 2 == 0 or number % 3 == 0:
        return False

    i = 5
    while i * i <= number:
        if number % i == 0 or number % (i + 2) == 0:
            return False
        print(i, i*i)
        i += 6

    return True

# Para testar se um número é primo:
num = 285655812077923117  # Coloque aqui o número que deseja verificar

if is_prime(num):
    print(f"{num} é primo")
else:
    print(f"{num} não é primo")

