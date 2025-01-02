	.eqv read_double, 7
	.eqv print_double, 3
	.data
d1:	.double 5.0
d2:	.double 9.0
d3:	.double 32.0
d4:	.double 100.0
dz:	.double 0.0
	.text
	.globl main
	
#	ft > $f12
f2c:				# double f2c(double ft) {
	la	$t0, d1			# $t0 = &d1
	l.d	$f0, 0($t0)		# $f0 = 5.0
	
	la	$t0, d2			# $t0 = &d2
	l.d	$f2, 0($t0)		# $f2 = 9.0
	
	div.d	$f0, $f0, $f2		# $f0 = 5.0 / 9.0
	
	la	$t0, d3			# $t0 = &d3
	l.d	$f2, 0($t0)		# $f2 = 32.0;
	
	sub.d	$f2, $f12, $f2		# $f2 = ft - 32.0;
	
	mul.d	$f0, $f0, $f2		# return (5.0 / 9.0 * (ft - 32.0));
	
	jr	$ra		# }


#	ft > $f12	ct > $f0
main:				# int main(void) {
	# prólogo ###########
	addiu	$sp, $sp, -4
	sw	$ra, 0($sp)
	#####################
	
	la	$t0, dz			# $t0 = &dz
	l.d	$f4, 0($t0)		# ct = 0.0;
	
while:	# 100.0 >= ct -> branch if 100.0 < ct
	la	$t0, d4			# $t0 = &d4
	l.d	$f4, 0($t0)		# $f4 = 100.0
	
	c.lt.d	$f4, $f0
	bc1t	endw			# while(ct <= 100.0) {
	
	li	$v0, read_double
	syscall
	mov.d	$f12, $f0			# ft = read_double();
	
	jal	f2c				# ct = f2c(ct);	
	
	li	$v0, print_double
	mov.d	$f12, $f0
	syscall					# print_double(ct);
	
	j	while			# }
endw:					
	
	# epílogo ###########
	lw	$ra, 0($sp)
	addiu	$sp, $sp, 4
	#####################

	jr	$ra		# }