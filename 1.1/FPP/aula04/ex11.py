while True:
    number = int(input('Insira um numero > '))
    categoria = None
    divisores = list()

    for i in range(1, number):
        if number % i == 0:
            divisores.append(i)
            
    if sum(divisores) < number:
        categoria = "deficiente"
    elif sum(divisores) == number:
        categoria = "perfeito"
    elif sum(divisores) > number:
        categoria = "abundante"
    print(f"Categoria: {categoria}.\nSoma: {sum(divisores)}")
    print(divisores)