	.data

array:	.word 7692, 23, 5, 234
	
	.eqv SIZE, 4
	.eqv print_int10, 1
	.text
	.globl main
	# register map
	# p		$t0
	# pultimo	$t1
	# *p		$t2
	# soma		$t3
	# aux		$t4
	
main:					# void main ( void ) {
	li	$t3, 0 			# int soma = 0;
	la	$t0, array		# p = array;
	
	li 	$t4, SIZE		# aux = SIZE
	addi	$t4, $t4, -1		# aux = SIZE - 1
	sll	$t4, $t4, 2		# aux = (SIZE - 1) * 4 -> SIZE of the array - 1 * 4 that is the number of bytes each element is ( it will be 12)
	
	addu	$t1, $t0, $t4		# pultimo = p + (SIZE - 1) * 4
	
while1:					# while() {
	bgt	$t0, $t1, endwhile1	# if ( p > pultimo) break;
	
	lw	$t2, 0($t0)		# $t2 = *p;
	add	$t3, $t3, $t2		# soma = soma + *p;
	addiu	$t0, $t0, 4
	
	j	while1
endwhile1:				# }
	li	$v0, print_int10	
	move	$a0, $t3
	syscall				# print_int10(soma);
	
	jr	$ra			#}
	
	