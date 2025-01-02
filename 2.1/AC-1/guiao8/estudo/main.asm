	.eqv print_string, 4
	.eqv read_int, 5
	.eqv print_char, 11
	.eqv MAX_STR_SIZE, 33
	.data
str:	.space MAX_STR_SIZE
	.text
	.globl main

# val > $s0	&str > $s1
main:				# int main(void) {
	# prólogo #################
	addiu	$sp, $sp, -12
	sw	$s0, 0($sp)
	sw	$s1, 4($sp)
	sw	$ra, 8($sp)
	###########################
	
	la	$s1, str		# $s1 = &str
	
do:					# do {
	li	$v0, read_int
	syscall					# $v0 = read_int();
	
	move 	$s0, $v0			# val = read_int();
	
	
	move	$a0, $s0
	li	$a1, 2
	move	$a2, $s1
	jal	itoa				# $v0 = itoa(val, 2, str);
	move	$a0, $v0
	li	$v0, print_string		# print_string( itoa(val, 2, str) );
	syscall
	
	li	$v0, print_char
	li	$a0, '\n'
	syscall					# print_char('\n');
	
	move	$a0, $s0
	li	$a1, 8
	move	$a2, $s1
	jal	itoa				# $v0 = itoa(val, 8, str);
	move	$a0, $v0
	li	$v0, print_string 		# print_string( itoa(val, 2, str) );
	syscall
	
	li	$v0, print_char
	li	$a0, '\n'
	syscall					# print_char('\n');
	
	move	$a0, $s0
	li	$a1, 16
	move	$a2, $s1
	jal	itoa				# $v0 = itoa(val, 16, str);
	move	$a0, $v0
	li	$v0, print_string 		# print_string( itoa(val, 2, str) );
	syscall
	
	bne	$s0, 0, do		# while (val != 0);
	
	li	$v0, 0			# return 0;
	
	# epílogo #################
	lw	$s0, 0($sp)
	lw	$s1, 4($sp)
	lw	$ra, 8($sp)
	addiu	$sp, $sp, -12
	###########################
	jr	$ra		# }
	
