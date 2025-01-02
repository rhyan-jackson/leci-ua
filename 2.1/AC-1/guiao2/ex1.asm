# implement AND $t2, OR $t3, NOR $t4, XOR $t5 with registers in $t0 and $t1
	.data
	.text
	.globl main
main: # setting $t0 and $t1
	ori $t0, $0, 0x5C1B # x
	ori $t1, $0, 0xA3E4 # y
	
	# applying "and" operator to $t2
	
	and $t2, $t0, $t1
	or  $t3, $t0, $t1
	nor $t4, $t0, $t1
	xor $t5, $t0, $t1
	
	# negative t0 and t1
	nor $t6, $t0, $0
	nor $t7, $t1, $0
	
	jr $ra
