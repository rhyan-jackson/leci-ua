	.data
fval:	.float 2.59375
fz:	.float 0.0
	.text
	.globl main
# val $t0; res $f0

main:				# int main(void) {

do:					# do {
	li	$v0, 5
	syscall
	move	$t0, $v0			# val = read_int();
	mtc1	$t0, $f2			#
	
	cvt.s.w	$f2, $f2			# float $f2 = (float) val;
	
	la	$t1, fval
	l.s	$f4, 0($t1)			# $f4 = 2.59375;
	mul.s	$f0, $f2, $f4			# res = ft * ft1;
	li	$v0, 2
	mov.s	$f12, $f0
	syscall					# print_float(res);
	la	$t1, fzero
	l.s	$f2, 0($t1)			# ft = 0.0
	
	c.eq.s	$f0, $f2			
	bc1f	do				# } while(res != 0.0);
	
	
	li	$v0, 0
	jr	$ra		# }
