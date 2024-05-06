bag1 = {1: 4, 2: 0, 5: 1, 10: 0, 20: 5, 50: 4, 100: 2, 200: 1}


def value(bag):
    return sum(v * k for v, k in bag.items())

print(value(bag1))