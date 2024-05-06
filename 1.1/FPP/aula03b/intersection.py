
def intersection(a, b, c, d):
    assert a <= b
    assert c <= d
    
    int1 = range(a, b + 1)
    int2 = range(c, d + 1)
    
    intersec = []
    for i in int1:
        for j in int2:
            if i == j:
                intersec.append(i)               
    return (intersec[0], intersec[-1])


def testIntersection(a, b, c, d, x, y):
    """Call intersection, print result and check against expected result."""
    print(f"intersection({a}, {b}, {c}, {d})", end=" ")
    (e, f) = intersection(a, b, c, d)
    if (e, f) == (x, y):
        check = "OK"
    else:
        check = "FAIL"
    print(f"--> ({e}, {f})", check)


def main():
    testIntersection(1, 6, 4, 8,  4, 6)
    testIntersection(1, 6, 3, 5,  3, 5)
    testIntersection(3, 7, 4, 9, 4, 7)
    
main()