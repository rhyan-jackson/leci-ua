	.data
str:	.asciiz "Arquitetura de Computadores I"
	.text
	.globl main
	
############################################################
# *str -> $t0
main:					# int main(void) {

	# prólogo
	addiu	$sp, $sp, -4
	sw	$ra, 0($sp)
	
	# fim prólogo
	la	$a0, str			# $t0 = *str;
	
	jal	strlen				# strlen(*str);
	
	move	$a0, $v0
	li	$v0, 1
	syscall					# print_int10(strlen(str));
	
	# epílogo
	lw	$ra, 0($sp)
	addiu	$sp, $sp, 4
	# fim epílogo
	li	$v0, 0
	jr	$ra			# }
	
############################################################
# len -> $t0
# s -> $a0
# *s -> $t1

strlen:					# int strlen(char *s) {
	li	$t0, 0			# 	int len = 0;
strlen_while:
	lb	$t1, 0($a0)		#	$t1 = *s;
	addiu	$a0, $a0, 1		#	s++;
	beq	$t1, 0, strlen_endw	#	while(*s++ != '\0')
	addiu	$t0, $t0, 1		#		len++;
	
	j	strlen_while
strlen_endw:
	move	$v0, $t0		# 	$v0 = len;
	jr	$ra			# }
