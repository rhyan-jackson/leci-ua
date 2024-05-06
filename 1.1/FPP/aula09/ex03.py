import math

listaImpar = [7, 2, 1, 5, 3, 4, 6]
listaPar = [4, 1, 3, 2, 6, 5]

medianaImpar = 4
medianaPar = 7/2



def mediana(lista):
    tamanho = len(lista)
    listaOrdenada = sorted(lista)
    if tamanho % 2 == 0:
        return (listaOrdenada[tamanho//2 - 1] + listaOrdenada[tamanho//2])/2
    else:
        return math.ceil(tamanho/2)
    
print(mediana(listaImpar) == medianaImpar)
print(mediana(listaPar), medianaPar)