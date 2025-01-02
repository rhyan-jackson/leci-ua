	.data
	.text
	.globl main

# y = 2x - 8
main:	ori $t0, $0, 5 #value of x
	add $t1, $t0, $t0 # t1 = t0 + t0
	addi $t2, $t1, -8
	jr $ra