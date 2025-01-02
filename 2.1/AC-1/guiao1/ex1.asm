	.data
	.text
	.globl main

# y = 2x + 8

main:	ori $t0, $0, 5 # change the last number for value of x
        ori $t2, $0, 8 # $t2 = 8
        add $t1, $t0, $t0 # $t1 = $t0 + $t0
        add $t1, $t1, $t2 # $t1 = $t1 + $t2
        jr $ra # fim