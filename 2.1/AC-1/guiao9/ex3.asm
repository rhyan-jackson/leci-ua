	.eqv SIZE, 5
	.eqv read_double, 7
	.eqv print_double, 3
	.data
dz:	.double 0.0
a:	.space 40
	.text
	.globl main	

# initially: &array > $a0	$ n > $a1

# i > $t1	array[i] > $f2		sum > $f18
average:				# double average(double *array, int n) {
	addi	$t1, $a1, -1			# int i = n-1;
	la	$t0, dz				# $t0 = &dz;
	l.d	$f18, 0($t0)			# double sum = 0.0;
avr_w1:						# while (1) {
	blt	$t1, 0, avg_endw1			# if (i < 0) break;
	
	sll	$t2, $t1, 3				# $t2 = 8 * i
	addu	$t2, $a0, $t2				# $t2 = &array + 8 * i = &array[i];
	l.d 	$f2, 0($t2)				# $f2 = array[i];
	
	add.d	$f18, $f18, $f2				# sum += array[i];
	
	addi	$t1, $t1, -1				# i--;
	j	avr_w1				# }
avg_endw1:
	mtc1	$a1, $f4			# $f4 = (int) n
	cvt.d.w	$f4, $f4			# $f4 = (double) n
	div.d	$f0, $f18, $f4			# return sum / (double) n;				
	jr	$ra			# }


# i > $t0
main:					# int main(void) {
	# prólogo ####
	addiu	$sp, $sp, -4
	sw	$ra, 0($sp)
	##############
	
	li	$t0, 0				# int i = 0;
main_w:						# while (1) {
	bge	$t0, SIZE, main_endw			# if (i >= SIZE) break;
	
	sll	$t1, $t0, 3				# $t1 = 8 * i
	la	$t2, a					# $t2 = &a
	addu	$t1, $t2, $t1				# $t1 = &a + 8*i = &a[i]
	
	li	$v0, read_double
	syscall
	s.d	$f0, 0($t1)				# a[i] = read_double();
	
	addiu	$t0, $t0, 1				# i++;
	j	main_w				# }
main_endw:
	
	la	$a0, a
	li	$a1, SIZE
	jal	average				# $f0 = average(a, SIZE);
	
	mov.d	$f12, $f0
	li	$v0, print_double
	syscall					# print_double(average(a, SIZE));
	
	li	$v0, 0				# return 0;
	
	# epílogo ####
	lw	$ra, 0($sp)
	addiu	$sp, $sp, 4
	##############
	
	jr	$ra			# }
	
