	.data
	.text

# initially:	double *p > $a0		unigned int n  $a1

# max > $f0	u > $t0		
max:					# double max(double *p, unsigned int n) {
	addi	$a1, $a1, -1
	sll	$a1, $a1, 3			# n = (n - 1) * 8;
	
	addu	$t0, $a0, $a1			# double *u = p + n - 1;
	
	l.d	$f0, 0($a0)			# max = *p;
	addiu	$a0, $a0, 1			# p++;
	
max_w:						# while (1) {
	bgt	$a0, $t0, max_endw			# if (p > u) break;
	
	l.d	$f2, 0($a0)				# $f2 = *p;
max_if:				
	c.le.d	$f2, $f0
	bc1t 	max_endif
							# if (*p > max) {
	mov.d	$f0, $f2					# max = *p;
max_endif:						# {
	  
	addiu	$a0, $a0, 8				# p++;
	j	max_w				# }
max_endw:
					# return max; // max in $f0
	jr	$ra			# }