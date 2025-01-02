	.data
	.text

#	i > $s0		&array > $s1	nval > $s2	media > $f20	soma > $f22		
var:					# double var(double *array, int nval) {
	# prólogo ###############
	addiu	$sp, $sp, -20
	lw	$s0, 0($sp)	
	lw	$s1, 4($sp)
	lw	$s2, 8($sp)
	l.s	$f20, 12($sp)
	l.s	$f22, 16($sp)
	#########################
	
	move	$s1, $a0			# $s1 = &array
	move	$s2, $a1			# $s2 = nval
	
	
	move	$a0, $s1
	move	$a1, $s2
	jal	average				# $f0 = average(array, nval)
	
	cvt.d.s	$f20, $f0			# media = (float) average(array, nval);

	li	$s0, 1				# i = 0;
	mtc1	$0, $f22			# soma = 0;
	cvt.d.w	$f22, $f22			# soma = 0.0;
var_w:						# while(1) {
	bge	$s0, $s2, var_endw			# if (i >= nval) break;
	
	sll	$t0, $s0, 3				# $t0 = i * 8;
	addu	$t0, $s1, $t0				# $t0 = &array[i]
	l.d	$f12, 0($t0)				# $f12 = array[i]
	cvt.s.d	$f12, $f12				# $f12 = (float) array[i]
	sub.s	$f12, $f12, $f20			# $f12 = (float) array[i] - media

	li	$a0, 2
	jal	xtoy					# $f0 = xtoy((float)array[i] - media, 2);
	
	add.s	$f22, $f22, $f0				# soma += xtoy((float)array[i] - media, 2);
	addiu	$s0, $s0, 1				# i++;
	j	var_w				# }
var_endw:

	cvt.d.s	$f22, $f22
	mtc1	$s2, $f0
	cvt.d.w	$f0, $f0
	div.d	$f0, $f22, $f0			# return (double) soma / (double) nval;
	
	# epílogo ###############
	sw	$s0, 0($sp)	
	sw	$s1, 4($sp)
	lw	$s2, 8($sp)
	s.s	$f20, 12($sp)
	s.s	$f22, 16($sp)
	addiu	$sp, $sp, 20
	#########################
	
	jr	$ra			# }