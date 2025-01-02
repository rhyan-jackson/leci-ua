	.text
	.globl atoi

# digit > $t0	res > $v0	s > $a0		*s > $t3
atoi:				# unsigned int atoi(char *s) {
	li	$v0, 0			# unsigned int digit res = 0;
	
atoi_while1:				# while(1) {
	lb	$t3, 0($a0)
	blt	$t3, '0', atoi_endw1
	bgt	$t3, '9', atoi_endw1		# if (*s < '0' || *s > '9') break;
	
	li	$t2, '0'
	subu	$t0, $t3, $t2			# digit = *s - '0'; 
	addiu	$a0, $a0, 1			# s++;
	mulo	$v0, $v0, 10			# res = res * 10;
	addu	$v0, $v0, $t0			# res = res + digit;
atoi_endw1:				# }
	jr	$ra		# }
