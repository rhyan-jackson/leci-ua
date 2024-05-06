from math import ceil, sqrt


def isPrime(n):
    for i in range(2, ceil(sqrt(n))):
        resto = n % i
        # print(f"{n} % {i} =", resto)
        if resto == 0:
            # print(f"O número é divisivel por {i}, não é primo")
            return False
    if n == 1:
        return False
    else:
        return True


def allPrimesUntil(n):
    primes = []
    for i in range(1, n + 1):
        if isPrime(i):
            primes.append(i)
    return primes


print(isPrime(1))
print(allPrimesUntil(1))
