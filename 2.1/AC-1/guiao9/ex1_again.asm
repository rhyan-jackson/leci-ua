	.eqv read_int, 5
	.eqv print_float, 2
	
	.data
const1:	.float	2.59375
fz:	.float	0.0
	.text
	.globl main

# res >	$f0	val > $v0	*const1 > $f4
main:					# int main(void) {

do:						# do {
	
	li	$v0, read_int
	syscall

	mtc1	$v0, $f2				# $f2 = (int) val
	cvt.s.w	$f2, $f2				# $f2 = (float) val
	
	la	$t1, const1				# $t1 = &const1
	l.s	$f4, 0($t1)				# $f4 = (float) const1
	
	mul.s	$f0, $f2, $f4				# res = (float) val * 2.59375;
	
	li	$v0, print_float
	mov.s	$f12, $f0
	syscall						# print_float(res);	
	
	la	$t1, fz					# $t1 = &fz load do address pra um registro t
	l.s	$f2, 0($t1)				# $f2 = *fz; dar load do simple para o cop. 1 (agora, o simple já está com seu respetio valor lá dentro)
	c.eq.s	$f0, $f2				# comparação
	bc1f	do				# } while(res != 0.0);
	
	li	$v0, 0				# return 0;
	jr	$ra			# }