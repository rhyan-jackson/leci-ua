	.data

str1:	.asciiz "Introduza um numero: "
str2:	.asciiz "Valor ignorado\n"
str3:	.asciiz "A soma dos positivos e': "
	.eqv print_string, 4
	.eqv print_int10, 1
	.eqv read_int, 5
	
	.text
	.globl main
	
	# $t0 -> soma, $t1 -> value, $t2 -> i
main:

	li 	$t2, 0		# i = 0;
	li 	$t1, 0		# soma = 0;
while1:				# while (i < 5) {
	bge 	$t2, 5, endWhile1   
	
	la	$a0, str1	
	li	$v0, print_string
	syscall			# print_string(str1);
	
	li	$v0, read_int
	syscall			# read_int()
	
	move	$t1, $v0	# value = read_int()
	
if1:
	blez 	$t1, else1	# if (value > 0) {
	
	add	$t0, $t0, $t1 	# soma = soma + value;
	j	endif1
else1:				# else {
	li	$v0, print_string
	la 	$a0, str2
	syscall			# print_string(str2);
	
endif1:				# } }

	addi 	$t2, $t2, 1	# i++;
	j	while1
endWhile1:			# }

	li 	$v0, print_string
	la 	$a0, str3
	syscall			# print_string(str3);
	
	li 	$v0, print_int10
	move 	$a0, $t0
	syscall			# print_int10(soma);
				# }
	
	jr	$ra

	
