def sum_formula(i):
    return ((-1)**i)/(2*i+1)

def leibnizPi4(n):
    sum = 0
    for i in range(0, n):
        sum += sum_formula(i)
    return sum

n = int(input('Defina n para: Soma dos n primeiros termos da seŕie de Leibniz > '))
print(leibnizPi4(n))