inp = False
cont = 1
sum = 0
print('Insira números reais. Te retornarei a média deles.')
while True:
    inp = input(f'Input ({cont}) > ')
    if inp == '':
        break
    else:
        cont += 1
        sum += float(inp)
        
print(f'Média > {sum / (cont-1)}')
    
    