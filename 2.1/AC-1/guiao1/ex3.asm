	.data
	.text
	.globl main

# y = 2x - 8
main:	ori $v0, $0, 5 # read_int() in instruction
	syscall # calling v0
	
	or $t0, $0, $v0 #passing what was inserted to t0
	add $t1, $t0, $t0 # t1 = t0 + t0
	addi $t2, $t1, -8
	
	ori $v0, $0, 1 # print_int10 code
	or $a0, $0, $t2 
	syscall
	
	ori $v0, $0, 34 # print_int16 code
	or $a0, $0, $t2
	syscall
	
	ori $v0, $0, 36 # print_int16 code
	or $a0, $0, $t2
	syscall
	
	jr $ra
