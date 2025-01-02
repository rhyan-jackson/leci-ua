	.data
ct1:	.double 0.5
	.text
	
#	aux > $f2	xn > $f4	i > $t0
sqrt:					# double sqrt(double val) {
	li	$t0, 1				# int i = 0;
	mtc1	$t0, $f4			# double xn = (int) 1;
	cvt.d.w	$f4, $f4			# xn = 1.0;
	
sqrt_if:
	mtc1	$0, $f0
	cvt.d.w	$f0, $f0			# $f0 = 0.0;
	c.le.d	$f12, $f0
	bc1t	sqrt_else			# if (val > 0.0) {
sqrt_do:						# do {
	mov.d	$f2, $f4					# aux = xn;
	la	$t1, ct1					# $t1 = &ct1;
	l.d	$f6, 0($t1)					# $f6 = 0.5;
	div.d	$f8, $f12, $f4					# $f8 = val / xn;
	add.d	$f8, $f4, $f8					# $f8 = (xn + val/xn);
	mul.d	$f4, $f6, $f8					# xn = 0.5 * (xn + val/xn);
	
	c.eq.d	$f2, $f4
	bc1t	sqrt_enddo
	li	$t1, 25						# $t1 = 25
	addiu	$t0, $t0, 1					# ++i;
	blt	$t0, $t1, sqrt_do				# } while ((aux != xn) && (++i < 25));
sqrt_enddo:
	j	sqrt_endif			# } 
sqrt_else:					# else {
	mov.d	$f4, $f0				# xn = 0.0;
sqrt_endif:					# }
	mov.d	$f0, $f4
	jr	$ra			# }