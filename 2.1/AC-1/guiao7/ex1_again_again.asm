	.eqv	print_int10, 1
	.data
str:	.asciiz "Arquitetura de Computadores I"
	.text
	.globl main

####################################################################################
# reg map
# len -> $v0
# *s -> $t1
# s -> a0

strlen:				# int strlen(char *s) {
	li	$v0, 0			# int len = 0;

strl_while:
	lb	$t1, 0($a0)		# $t1 = *s;
	addiu	$a0, $a0, 1		# s++;
	
	beq	$t1, '\0', strl_endw	# while(*s++ != '\0') {
	addiu	$v0, $v0, 1			# len++;
	j strl_while			# }
strl_endw:				
	jr	$ra		# }

####################################################################################

# reg map
# str -> $a0

main:				# int main(void) {
	# prólogo
	addiu	$sp, $sp, -4
	sw	$ra, 0($sp)
	#########
	
	la	$a0, str		# $a0 = &str[0];
	jal	strlen			# $v0 = strlen(str);
	
	move	$a0, $v0
	li	$v0, print_int10
	syscall				# print_int10($v0) = print_int10(strlen(str));
	
	li	$v0, 0			# return 0;
	# epílogo
	lw	$ra, 0($sp)
	addiu	$sp, $sp, 4
	#########

	jr	$ra		# }