from math import sqrt, pow, hypot, asin, degrees

a = float(input('Insira a medida do primeiro cateto > '))
b = float(input('Insira a medida do segundo cateto > '))

c = sqrt(pow(a, 2) + pow(b, 2))
cfunc = hypot(a, b)

print(cfunc, c)

angle = degrees(asin(b / c))

print(f'{angle:.2f}°') 	
