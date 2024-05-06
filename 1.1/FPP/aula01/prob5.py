
while True:
	seg = int(input('Insira o tempo em segundos > '))
	
	h = seg // 3600
	m = (seg % 3600) // 60
	s = seg % 60

	print(f'{h:02d}:{m:02d}:{s:02d}')

