	.eqv	print_string, 4
	
	.data
str:	.asciiz "ITED - orievA ed edadisrevinU"
	.text
	.globl main


# $a0 -> &str;
main:					# int main(void) {
	# prologo
	addiu	$sp, $sp, -4
	sw	$ra, 0($sp)
	#########
	la	$a0, str			# $a0 = str;
	
	jal	strrev				# strrev(str);
	
	move	$a0, $v0
	li	$v0, print_string
	syscall					# print_strinf(strrev(str));
	
	# epílogo
	lw	$ra, 0($sp)
	addiu	$sp, $sp, 4
	#########
	
	li	$v0, 0				# return 0;
	jr	$ra			# }

################################################
# p1 -> $s0
# p2 -> $s1
# *p2 -> $t0
strrev:					# char *strrev(char* str) {
	# prólogo
	addiu	$sp, $sp, -16
	sw	$ra, 0($sp)
	sw	$s0, 4($sp)
	sw	$s1, 8($sp)
	sw	$s3, 12($sp)
	#########
	
	move	$s3, $a0			# $s3 = &str;
	
	move	$s0, $a0			# char *p1 = str;
	move	$s1, $a0			# char *p2 = str;

strrev_while1:					# while (1) {
	lb	$t0, 0($s1)				# $t0 = *p2;
	beq	$t0, '\0', strrev_endw1			# if (*p2 == '\0') break;
	
	addiu	$s1, $s1, 1
	j	strrev_while1			# }
strrev_endw1:
	addiu	$s1, $s1, -1

strrev_while2:					# while (1) {
	bge	$s0, $s1, strrev_endw2			# if (p1 >= p2) break;
	
	move	$a0, $s0
	move	$a1, $s1
	jal	exchange				# exchange(p1, p2);
	
	addiu	$s0, $s0, 1				# p1++;
	addiu	$s1, $s1, -1				# p2--;	
	
	j	strrev_while2			# }
strrev_endw2:					

	move	$v0, $s3			# return str;
	
	# epílogo
	lw	$ra, 0($sp)
	lw	$s0, 4($sp)
	lw	$s1, 8($sp)
	lw	$s3, 12($sp)
	addiu	$sp, $sp, 16
	#########
	jr	$ra			# }


################################################
# c1 -> $a0
# c2 -> $a1
# aux -> $t0
exchange:			# void exchange(char *c1, char *c2) {
	lb	$t0, 0($a0)		# char aux = *c1;
	lb	$t1, 0($a1)		# $t1 = *c2;
	sb	$t1, 0($a0)		# *c1 = *c2;
	sb	$t0, 0($a1)		# *c2 = aux;
	jr	$ra		# }
