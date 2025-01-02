	.data
str:	.space 21
	.eqv SIZE, 20
	.eqv read_string, 8
	.eqv print_int10, 1
	 
	.text
	.globl main
	# register map
	# num		$t0
	# i		$t1
	# str[i]	$t2
	# p		$t3
	
main:					# void main(void) {
	
	li	$v0, read_string
	la	$a0, str
	li	$a1, SIZE 
	syscall				# read_string(str, SIZE);
	
	li	$t0, 0			# num = 0;
	li 	$t1, 0			# i = 0;
	
while1:					# while(true) {
	la	$t3, str		# p = &str;
	addu	$t3, $t3, $t1		# p = p + i
	lb	$t2, 0($t3)
			
	beq	$t2, '\0', endWhile1 	# if (str[i] != '\0') break
	
if1:					
	blt	$t2, '0', endif1	
	bgt	$t2, '9', endif1	# if (str[i] >= '0' && str[i] <= '9') {
	
	addiu	$t0, $t0, 1		# num++;
	
endif1:

	addiu	$t1, $t1, 1		# i++;
	j	while1
	
endWhile1:				#	}

	li	$v0, 1
	move	$a0, $t0
	syscall				#print_int10(num);
	
	jr	$ra			# }