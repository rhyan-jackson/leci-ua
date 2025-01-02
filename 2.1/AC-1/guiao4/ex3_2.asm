	.data
	.eqv SIZE, 20
	.eqv read_string, 8
	.eqv print_int10, 1
str:	.space	21
	.text
	.globl main
	
	
	 # reg map
	 # num -> $t0
	 # i -> $t1
	 
main:		    		# void main(void) {

	li	$v0, read_string
	la	$a0, str
	li	$a1, SIZE
	syscall				# read_string(str, SIZE);
	
	li	$t0, 0			# num = 0;
	li 	$t1, 0			# i = 0;
	
while1:
	la	$t2, str		# $t2 = &str;
	addu	$t2, $t1, $t2		# $t2 = i + &str = &str[i]
	lb	$t2, 0($t2)		# $t2 = str[i]
	
	beq	$t2, '\0', endw1	# while(str[i] != '\0') {
	
if1:
	blt	$t2, '0', endif1
	bgt	$t2, '9', endif1		# if( (str[i] >= '0') && (str[i] <= '9') ) {
	
	addiu	$t0, $t0, 1				# num++;
						
endif1:						# }
	
	addiu	$t1, $t1, 1			# i++;
	j	while1			# }
endw1:					
	
	move	$a0, $t0
	li	$v0, print_int10
	syscall				# print_int10(num);
		
	jr	$ra		# }