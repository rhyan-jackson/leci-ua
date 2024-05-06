# 20 para fab.
# 24.95 a capa do livro 
# tx. 23%
# acresce sobre o valor 0,20
# PC = (PF + Lucro) * (1 + IMP) + SPA

pc = 24.95 * 500
pf = 20 * 500
iva = 0.23
spa = 0.2 * 500

lucro = ((pc - spa)/(1 + iva))-pf
print(round(lucro, 2))

total_impostos = (pf + lucro) * 0.23
print(total_impostos)
