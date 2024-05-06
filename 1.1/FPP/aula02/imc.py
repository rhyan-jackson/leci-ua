# -*- coding: utf-8 -*-

# Modifique o programa para indicar a categoria de IMC de acordo com a tabela:
# IMC:          <18.5   [18.5, 25[  [25, 30[    30 ou mais 
# Categoria:    Magro   Saudável    Forte       Obeso 

print("Índice de Massa Corporal")

altura = float(input("Altura (m)? "))
peso = float(input("Peso (kg)? "))

imc = peso / altura**2

print("IMC:", imc, "kg/m2")

# Determinar a categoria de IMC:
if imc < 18.5:
    categoria = "Magro"
elif imc >= 18.5 and imc < 25:
	categoria = "Saudável"
elif imc >= 25 and imc < 30:
	categoria = "Forte"
elif imc >= 30:
	categoria = "Obeso"
	
print("Categoria:", categoria)

