	.data						#0x10010000
str1:	.asciiz "Introduza um numero: "
str2:	.asciiz "Valor ignorado\n"
str3:	.asciiz "A soma dos positivos e':"		#0x10010016
	.text
	# mapa de registros
	# soma > $t0, value > $t1, i > $t2
	.globl main
main:							# void main(void) {
	li 	$t2, 0					# i = 0
	li	$t0, 0					# soma = 0

while:
	bge 	$t2, 5, endw				# while (i < 5) {
	li 	$v0, 4
	la 	$a0,str1
	syscall						#print_str(str1);
	
	li	$v0, 5
	syscall						#read_int()
	
	ori	$t1, $v0, 0				# valor = read_int()
if:	
	blez	$t1, else			#if (value > 0) {
	add 	$t0, $t0, $t1
	
	j	endif
else:							# } else {
	li	$v0, 4
	la	$a0, str2
	syscall						# print_string(str2);
	
endif: 							# }

	addi $t2, $t2, 1				# i++
	j	while					# }
	
endw:	
	li	$v0, 4
	la	$a0, str3
	syscall						# print_string(str3);
	
	li	$v0, 1
	move	$a0, $t0
	syscall						# print_int10(soma);
	
	jr $ra					# }
	
