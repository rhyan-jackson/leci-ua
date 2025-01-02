	.data
str1:	.asciiz	"ISSO É UMA STRING"
	.text
	.globl main
	
	
	# reg map
	# len -> $v0
	
strlen:				# int strlen (char *s) {
	li	$v0, 0			# int len = 0;
	
strwhile1:				# while (1) {
	lb	$t0, 0($a0)			# char cc = *s;
	addiu	$a0, $a0, 1			# s++;
	beq	$t0, '\0', strendw1		# if (cc == '\0') break;
	addi	$v0, $v0, 1			# len++;
	j	strwhile1		
		
strendw1:				# }
	jr	$ra		# }
	
main:				# void main( void ) {
	addiu	$sp, $sp, -4
	sw	$ra, 0($sp)		# prólogo
	la	$a0, str1
	
	jal	strlen			# int nc = strlen(str1);
	move	$a0, $v0
	li 	$v0, 1
	syscall				# print_int10(nc);
	
	
	li	$v0, 0			# return 0;
	lw	$ra, 0($sp)		# epílogo
	addiu	$sp, $sp, 4
	jr	$ra		# }
