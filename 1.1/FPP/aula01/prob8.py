# 1 resposta:
moradores_andar = 2
movimento_dia = 4
altura_andar = 3
total_dia = 0

for andar in range(1, 4):
	quant_mov_por_andar = moradores_andar * movimento_dia * andar * altura_andar
	total_dia += quant_mov_por_andar

total_ano_metros = total_dia * 360

print('\033[31m1 resposta:\033[m')
print(f'Total diário: {total_dia}')
print(f'Total no ano em km: {total_ano_metros/1000:.2f} km.')

# 2 resposta:
tempo_segundos = total_ano_metros / 1
tempo_horas = tempo_segundos / 3600

print('\033[31m2 resposta:\033[m')
print(tempo_horas, 'horas.')

# 3 resposta:
print('\033[31m3 resposta:\033[m')

quant_andares = int(input('Digite a quantidade de andares > '))
moradores_andar = int(input('Digite a quantidade de moradores por andar > '))
movimento_dia = 4
altura_andar = 3
total_dia = 0

for andar in range(1, quant_andares + 1):
	quant_mov_por_andar = moradores_andar * movimento_dia * andar * altura_andar
	total_dia += quant_mov_por_andar

total_ano_metros = total_dia * 360

print(f'Total diário: {total_dia}')
print(f'Total no ano em km: {total_ano_metros/1000:.2f} km.')




