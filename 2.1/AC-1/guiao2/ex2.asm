	.data
	
	.text
	.globl	main
	# register map
	# $t0 bin
	# $t1 gray
	# Imm constant
main: 
	li $t0, 2
	srl $t1, $t0, 1
	xor $t1, $t0, $t1
	
	jr	$ra
