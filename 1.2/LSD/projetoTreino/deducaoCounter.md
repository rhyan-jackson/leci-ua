um numero de 2 bits conta até 2²-1

o numero 8 precisa de 4 bits 8 = 2³ > 2³ - 1

(unsigned)
1 bit -> 0 - 1
2 bits -> 0 - 3
3 bits -> 0 - 7
4 bits -> 0 - 15
n bits -> 0 - 2^n-1

imagine um número k entre 0 e 2^n - 1, devemos descobrir o menor n possível tal que k <= 2^n - 1 com n > 1

algebricamente k + 1<= 2^n <-> log2(k + 1) <= n com n natural.