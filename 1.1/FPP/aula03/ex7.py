def tax(r):
    if r <= 1000:
        valor = 0.1*r
    elif 1000 < r <= 2000:
        valor = 0.2*r - 100
    else:
        valor = 0.3*r - 100
    return valor

lista = [1000, 2000, 3000, 0, -5]

for x in lista:
    print(x, tax(x))