'''Um certo tarifário de telefone cobra 0.12 € por minuto, cobrado ao segundo após o
primeiro minuto. Por exemplo, chamadas de 10 s, de 30 s ou de 60 s custam 0.12 €. Uma
chamada de 90 s custa 0.12 (pelo primeiro minuto) + 0.06 (pelos restantes 30 s) = 0.18 €.
Faça um programa que calcule o custo de uma chamada sabendo a duração em segundos.'''

sec = int(input('Enter the call duration(sec) > '))
price = 0


if sec <= 60:
	price = 0.12
else:
	price = (sec/60) * 0.12

print(price)

