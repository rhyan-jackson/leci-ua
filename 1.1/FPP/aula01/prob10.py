
# 6:52 saio
# 1 percorre 1km a 10 min por km
# 2 corre 3km a 6min por km
# 3 percorre 4km a 10min por km

trajeto1 = 1 * 10
trajeto2 = 3 * 6
trajeto3 = 4 * 10

total_minutos = trajeto1 + trajeto2 + trajeto3

print(total_minutos)
tempo_inicial = 6 * 60 * 60 + 52 * 60
trajeto_segundos = total_minutos * 60
tempo_final = tempo_inicial + trajeto_segundos

h = tempo_final // 3600
m = (tempo_final % 3600) // 60
s = tempo_final % 60

print(f'{h:02d}:{m:02d}:{s:02d}')
