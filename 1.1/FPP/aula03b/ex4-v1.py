idd1 = int(input('Insira a idade do 1° integrante da familia > '))
idd2 = int(input('Insira a idade do 2° integrante da familia > '))
idd3 = int(input('Insira a idade do 3° integrante da familia > '))
idd4 = int(input('Insira a idade do 4° integrante da familia > '))

# Definindo o preço para o 1° membro da família.
if idd1 <= 6: preco1 = 0
elif 6 <= idd1 <= 12: preco1 = 2.5
elif 13 <= idd1 <= 65: preco1 = 5
elif idd1 > 65: preco1 = 2.5

# Definindo o preço para o 2° membro da família.
if idd2 <= 6: preco2 = 0
elif 6 <= idd2 <= 12: preco2 = 2.5
elif 13 <= idd2 <= 65: preco2 = 5
elif idd2 > 65: preco2 = 2.5

# Definindo o preço para o 3° membro da família.
if idd3 <= 6: preco3 = 0
elif 6 <= idd3 <= 12: preco3 = 2.5
elif 13 <= idd3 <= 65: preco3 = 5
elif idd3 > 65: preco3 = 2.5

# Definindo o preço para o 4° membro da família.
if idd4 <= 6: preco4 = 0
elif 6 <= idd4 <= 12: preco4 = 2.5
elif 13 <= idd4 <= 65: preco4 = 5
elif idd4 > 65: preco4 = 2.5

print(
    f'Idade 1: {idd1} | Preço: {preco1}\n'
    f'Idade 2: {idd2} | Preço: {preco2}\n'
    f'Idade 3: {idd3} | Preço: {preco3}\n'
    f'Idade 4: {idd4} | Preço: {preco4}\n'
)