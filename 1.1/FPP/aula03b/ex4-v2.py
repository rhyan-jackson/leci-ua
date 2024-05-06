def recolhaIdade(ordem_integrante):
    try:
        idade = int(input(f'Insira a idade do {ordem_integrante}° integrante da familia > '))
    except ValueError as erro:
        print('Insira um valor válido para idade.')
        exit()
    else:
        if not 0 <= idade <= 150:
            print('Insira um valor válido para idade.')
            exit()
        else: return idade
        
def definirPreco(idade):
    if idade <= 6: preco = 0
    elif 6 <= idade <= 12: preco = 2.5
    elif 13 <= idade <= 65: preco = 5
    elif idade > 65: preco = 2.5
    return preco

idd1 = recolhaIdade(1)
idd2 = recolhaIdade(2)
idd3 = recolhaIdade(3)
idd4 = recolhaIdade(4)

preco1 = definirPreco(idd1)
preco2 = definirPreco(idd2)
preco3 = definirPreco(idd3)
preco4 = definirPreco(idd4)

# # Definindo o preço para o 1° membro da família.
# if idd1 <= 6: preco1 = 0
# elif 6 <= idd1 <= 12: preco1 = 2.5
# elif 13 <= idd1 <= 65: preco1 = 5
# elif idd1 > 65: preco1 = 2.5

# # Definindo o preço para o 2° membro da família.
# if idd2 <= 6: preco2 = 0
# elif 6 <= idd2 <= 12: preco2 = 2.5
# elif 13 <= idd2 <= 65: preco2 = 5
# elif idd2 > 65: preco2 = 2.5

# # Definindo o preço para o 3° membro da família.
# if idd3 <= 6: preco3 = 0
# elif 6 <= idd3 <= 12: preco3 = 2.5
# elif 13 <= idd3 <= 65: preco3 = 5
# elif idd3 > 65: preco3 = 2.5

# # Definindo o preço para o 4° membro da família.
# if idd4 <= 6: preco4 = 0
# elif 6 <= idd4 <= 12: preco4 = 2.5
# elif 13 <= idd4 <= 65: preco4 = 5
# elif idd4 > 65: preco4 = 2.5

print(
    f'Idade 1: {idd1} | Preço: {preco1}\n'
    f'Idade 2: {idd2} | Preço: {preco2}\n'
    f'Idade 3: {idd3} | Preço: {preco3}\n'
    f'Idade 4: {idd4} | Preço: {preco4}\n'
)