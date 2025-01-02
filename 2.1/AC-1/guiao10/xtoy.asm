	.data
	.text
	.globl xtoy


# $s0 > i	# $s1 > y	# $f20 > result		# $f22 > x 
xtoy:					# float xtoy(float x, int y) {
	# prólogo ########
	addiu	$sp, $sp, -16
	sw	$s0, 0($sp)
	sw	$s1, 4($sp)
	s.s	$f20, 8($sp)
	s.s	$f22, 12($sp)
	##################
	
	mov.d	$f22, $f12			# $f22 = x;
	move	$s1, $a1			# $s1 = y;
	
	li	$s0, 0				# i = 0;
	li	$t0, 1				# $t0 = 1;
	mtc1	$t0, $f20			# result = (int) 1.0;
	cvt.s.w	$f20, $f20			# result = (float) 1.0;
xtoy_while:					# while (1) {
	move	$a0, $s1
	jal	abs					# $v0 = abs(y)
	bge	$s0, $v0, xtoy_endw			# if (i >= abs(y)) break;

xtoy_if:
	blez	$s1, xtoy_else				# if (y > 0) {
	mul.s	$f20, $f20, $f22				# result *= x;
	j	xtoy_endif				# }
xtoy_else:						# else {
	div.s	$f20, $f20, $f22				# result /= x;
xtoy_endif:						# }
	addiu	$s0, $s0, 1				# i++;
	j	xtoy_while			# }
xtoy_endw:
	mov.s	$f12, $f22			# return result;

	# epílogo ########
	lw	$s0, 0($sp)
	lw	$s1, 4($sp)
	l.s	$f20, 8($sp)
	l.s	$f22, 12($sp)
	addiu	$sp, $sp, 16
	##################
	jr	$ra			# }