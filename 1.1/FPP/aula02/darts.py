# You throw a dart that hits coordinates (x, y) on a dartboard.
# Create a program that gives you the score.
# See:
#   https://en.wikipedia.org/wiki/Darts#Dartboard
#   https://www.dimensions.com/element/dartboard

import numpy
import math
from infos import *

while True:
    pi = numpy.pi
    
    # Multiplicador (só definição da var., isso muda dependendo do setor circular)
    mult = 1
    pt = None

    # Esses são os raios de cada círculo, do maior para o menor: c2 -> c7

    c2 = 17
    c3 = 16.2
    c4 = 10.7
    c5 = 9.9
    c6 = 1.6
    c7 = 0.64

    angulo = None

    # Input dos dados

    print("Enter the coordinates in cm from the center of the board.")
    x = float(input("x? "))
    y = float(input("y? "))

    # Operadores lógicos e atribuição de multiplicadores ou valores diretamente:

    if x**2 + y**2 <= c7**2:
        pt = 50
    elif x**2 + y**2 > c7**2 and x**2 + y**2 < c6**2:
        pt = 25
    elif x**2 + y**2 > c6**2 and x**2 + y**2 < c5**2:
        mult = 1
    elif x**2 + y**2 > c5**2 and x**2 + y**2 < c4**2:
        mult = 3
    elif x**2 + y**2 > c4**2 and x**2 + y**2 < c3**2:
        mult = 1
    elif x**2 + y**2 > c3**2 and x**2 + y**2 < c2**2:
        mult = 2
    else:
        print('Coordenadas inválidas.')
        exit()

    if pt == None:
        # Tratando o ângulo
        quadrante = None
        if x != 0:
            m = y / x

        if x > 0 and y >= 0:
            angulo = math.atan(m)
            quadrante = 1
        elif x < 0 and y >= 0:
            angulo = math.atan(m) + pi
            quadrante = 2
        elif x < 0 and y <= 0:
            angulo = math.atan(m) + pi
            quadrante = 3
        elif x > 0 and y <= 0:
            angulo = math.atan(m) + 2*pi
            quadrante = 4
        elif x == 0:
            if y > 0:
                angulo = pi /2
            elif y < 0:
                angulo = 3*pi/2
                
        for intervalo, pos_ponto in ANGULOS.items():
            if angulo > intervalo[0] and angulo < intervalo[1]:
                break
        
        pt_puro = POINTS[pos_ponto]
        pt = mult * pt_puro
        
    print(f"Ponto total: {pt} | Mult: {mult} | Ponto puro: {pt_puro}")