	.text
	.globl itoa
# p > $s0	s > $s1		n > $s2		b > $s3		digit > $a0	
itoa:				# char *itoa(unsigned int n, unsigned int b, char *s) {
	# prólogo ###################
	addiu	$sp, $sp, -20
	sw	$s0, 0($sp)
	sw	$s1, 4($sp)
	sw	$s2, 8($sp)
	sw	$s3, 12($sp)
	sw	$ra, 16($sp)
	# end #######################

	move	$s1, $a2		# $s1 = s
	move	$s2, $a0		# $s2 = n
	move	$s3, $a1		# $s3 = b
	move	$s0, $s1		# char *p = s;
itoa_do:				# do {
	rem	$a0, $s2, $s3			# digit = n % b;
	div	$s2, $s2, $s3			# n = n / b;
	
	jal	toascii				# $v0 = toascii( digit );
	
	sb	$v0, 0($s0)			# *p = toascii(digit);
	addiu	$s0, $s0, 1			# p++;
	
	bgt	$s2, 0, itoa_do		# } while (n > 0);
	
	li	$t0, '\0'		# $t0 = '\0'
	sb	$t0, 0($s0)		# *p = '\0'
	
	move	$a0, $s1		# $a0 = &s;
	jal	strrev			# return s;
	
	# epílogo ###################
	lw	$s0, 0($sp)
	lw	$s1, 4($sp)
	lw	$s2, 8($sp)
	lw	$s3, 12($sp)
	lw	$ra, 16($sp)
	addiu	$sp, $sp, 20
	# end #######################
	
	jr	$ra		# }
