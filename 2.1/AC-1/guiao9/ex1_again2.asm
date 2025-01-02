	.eqv read_int, 5
	.eqv print_float, 2
	.data
const1:	.float	2.59375
fz:	.float 	0.0
	.text
	.globl main

#	val > $f0	res > $f0	const1 > $f4
main:					# int main (void) {

do:						# do {
	li	$v0, read_int
	syscall						# val = read_int();
	
	mtc1	$v0, $f2				# $f2 = (int) val;
	cvt.s.w	$f2, $f2				# $f2 = (float) val;
	
	la	$t0, const1				# $t0 = &const1
	l.s	$f4, 0($t0)				# $f4 = 2.59375
	
	mul.s	$f0, $f2, $f4				# res = (float) val * 2.59375;
	
	li	$v0, print_float
	mov.s	$f12, $f0				# $f12 = res;
	syscall						# print_float(res);
	
	la	$t0, fz					# $t0 = &fz
	l.s	$f4, 0($t0)				# $f4 = 0.0
	c.eq.s	$f0, $f4				# flag = (res == 0.0);
	bc1f	do				# } while (res != 0.0);
	
	li	$v0, 0				# return 0;
	
	jr	$ra			# }