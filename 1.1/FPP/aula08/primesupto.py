from math import ceil, sqrt

def isPrime(n):
    if n != 2:
        for i in range(2, ceil(sqrt(n)) + 1):
            resto = n % i
            # print(f"{n} % {i} =", resto)
            if resto == 0:
                # print(f"O número é divisivel por {i}, não é primo")
                return False
        if n == 1:
            return False
    return True

def primesUpTo(n):
    primes = set()
    for i in range(1, n + 1):
        if isPrime(i):
            primes.add(i)
    return primes


def main():
    # Testing:
    s = primesUpTo(30)
    print(s)

    # Do some checks:
    assert primesUpTo(30) == {2, 3, 5, 7, 11, 13, 17, 19, 23, 29}
    assert len(primesUpTo(1000)) == 168
    assert len(primesUpTo(7918)) == 999
    assert len(primesUpTo(7919)) == 1000
    print("All tests passed!")


if __name__ == "__main__":
    main()
