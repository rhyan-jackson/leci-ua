largura = float(input('Insira a largura do espaco > ').replace(',', '.'))
comprimento = float(input('Insira a largura do comprimento > ').replace(',', '.'))

# considerando que é um espaço retangular:

area = largura * comprimento
perimetro = largura * 2 + comprimento * 2

print(f'A área do espaço é: {area};\nO perímetro do espaço é: {perimetro}.')
