	.data
	
	.text
	.globl main
	
	# $t0 gray
	# $t1 num
	# $t2 bin
	# $t3 aux
	
main:
	li $t0, 4	# gray = ?
	or $t1, $0, $t0 	# num = gray;
	
	srl $t3, $t1, 4		# aux = num >> 4
	xor $t1, $t1, $t3 	# num = num ^ aux
	
	srl $t3, $t1, 2		# aux = num >> 2
	xor $t1, $t1, $t3	# num = num ^ aux
	
	srl $t3, $t1, 1		# aux = num >> 1
	xor $t1, $t1, $t3	# num = num ^ aux 
	
	sll $t2, $t1, 0		# or move, or or, or ori, you choose
	
	jr	$ra
	
	