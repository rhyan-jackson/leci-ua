from math import dist

positions = ('x1', 'y1', 'x2', 'y2')
coords = []

for c in positions:
	entry = float(input(f'Insira as coordenadas para {c} > '))
	coords.append(entry)

pt1 = (coords[0], coords[1])
pt2 = (coords[2], coords[3])

print(dist(pt1, pt2))


