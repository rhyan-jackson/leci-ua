from traced import traced


# Calcula o factorial de n, baseado na recorrencia n! = n*(n-1)!.
# Mas não termina!  Detete a causa e corrija o erro.
def fact(n):
    return n * fact(n - 1) if n >= 1 else 1


# Calcula o maximo divisor comum entre a e b.
# Baseia-se no algoritmo de Euclides.
# Mas não termina!  Detete a causa e corrija o erro.
@traced
def gcd(a, b):
    if b == 0:
        return a
    return gcd(b, a % b)


def main():
    print(fact(4))  # 24
    print(fact(5))  # 120

    x = 2 * 27 * 53 * 61
    y = 2 * 2 * 17 * 23 * 53
    # print(gcd(x, y), x, y)
    print(gcd(175, 25), 175, 25)
    # assert gcd(x, y) == 2 * 53


if __name__ == "__main__":
    main()
