	.data 
str:	.space 21
	.eqv SIZE, 20
	.eqv print_int10, 1
	.eqv read_string, 8
	.text
	.globl main
	
	# register map
	# num		$t0
	# p		$t1
	# *p 		$t2
	
main:					# void main( void ) {
	li	$t0, 0
	
	li	$v0, read_string
	la 	$a0, str
	li	$a1, SIZE
	syscall				# read_string(str, SIZE)
	
	la	$t1, str		# p = str;
	
while1:
	lb	$t2, 0($t1)		# *p
	beq	$t2, '\0', endWhile1    # while( *p != '\0' ) {
	
if1:
	blt	$t2, '0', endif1	
	bgt	$t2, '9', endif1
					# if( (*p >= '0') && (*p <= '9') ) {
	addiu	$t0, $t0, 1		# num++;
	
endif1:					#		}
	
	addiu	$t1, $t1, 1		# p++;
	
	j	while1
endWhile1:				#	}
	
	li	$v0, print_int10
	move 	$a0, $t0
	syscall				# print_int10(num);
	
	
	jr	$ra			# }