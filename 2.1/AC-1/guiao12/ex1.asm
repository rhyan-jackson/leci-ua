################################
#	Name			Align		Size		Offset
# unsigned int id_number	4		4		0
#char first_name[18]		1		18		4
# char last_name[15]		1		15		22
# float grade			4		4		37 > 40
#				4		44	

	.eqv 	id_number, 0
	.eqv	first_name, 4
	.eqv	last_name, 22
	.eqv	grade, 40
	.eqv	MAX_STUDENTS, 4
	.eqv	print_string, 4
	.eqv	print_float, 2
	.eqv	read_int, 5
	.eqv 	read_string, 8
	.eqv	read_float, 6
	.data
st_array:
	.space 176			# 176 = 44 * 4
media:	.space 4
str1:	.asciiz	"N. Mec.: "
str2:	.asciiz	"Nome: "
str3:	.asciiz	"Apelido: "
str4:	.asciiz	"Nota: "
str5:	.asciiz "\nMedia: "
max_grade:	.float	-20.0
fz:	.float	0.0
# pmax > $t9
	.text
	.globl	main

main:				# int main(void) {

	# prólogo
	addiu	$sp, $sp, -4
	lw	$ra, 0($sp)
	#########
	
	la	$a0, st_array
	li	$a1, MAX_STUDENTS
	jal	read_data		# read_data(st_array, MAX_STUDENTS);
	
	la	$a0, st_array
	li	$a1, MAX_STUDENTS
	la	$a2, media
	jal	max			# max(st_array, MAX_STUDENTS, &media);
	
	move	$t9, $v0		# pmax = max(st_array, MAX_STUDENTS, &media);
	
	li	$v0, print_string
	la	$a0, str5
	syscall				# print_string("\nMedia: ");

	li	$v0, print_float
	la	$t0, media
	l.s	$f12, 0($t0)
	syscall				# print_float(media);
	
	move	$a0, $t9		# $a0 = pmax;
	jal	print_student

	# epílogo
	sw	$ra, 0($sp)
	addiu	$sp, $sp, 4
	#########
	
	li	$v0, 0			# return 0;	
	jr	$ra		# }
	
	
#######################################
# i > $t0	&st[i] > $t1	&st > $t2	ns > $t3
read_data:				# read_data(student *st, int ns) {
	move	$t2, $a0			# $t2 = st;
	move	$t3, $a1			# $t3 = ns;
	li	$t0, 0				# int i = 0;
read_data_while1:				# while (1) {
	bge	$t0, $a1, read_data_endw1		# if (i >= ns) break;
	
	li	$v0, print_string
	la	$a0, str1
	syscall						# print_string("N. Mec: ");
	
	li	$v0, read_int				
	syscall						# $v0 = read_int();
	
	mul	$t1, $t0, 44				# $t1 = i * 44;
	addu	$t1, $t1, $t2				# $t1 = &st + 44 * i = &st[i]
	
	sw	$v0, 0($t1)				# st[i].id_number = read_int();
	
	li	$v0, print_string
	la	$a0, str2
	syscall						# print_string("Primeiro Nome: ");
	
	lw	$a0, 4($t1)
	li	$a1, 17
	li 	$v0, read_string
	syscall						# read_string(st[i].first_name, 17);
	
	li	$v0, print_string
	la	$a0, str3
	syscall						# print_string("Ultimo Nome: ");
	
	lw	$a0, 22($t1)
	li	$a1, 14
	li 	$v0, read_string
	syscall						# read_string(st[i].last_name, 14);
	
	li	$v0, print_string
	la	$a0, str4
	syscall						# print_string("Nota: ");
	
	li	$v0, read_float
	syscall						# read_float(); (return in $f0)
	s.s	$f0, 40($t1)				# st[i].grade = read_float();
	
	addiu	$t0, $t0, 1				# i++;
	j	read_data_while1		# }
read_data_endw1:
	jr	$ra			# }
	



################################
# on start: st > $a0	ns > $a1	media > $a2


# max_grade > $f0	sum > $f2	p > $t1		pmax > $t2	(st + ns) > $t3

max:					# student* max(student *st, int ns, float *media) {
	la	$t0, max_grade			# $a0 = &max_grade;
	l.s	$f0, 0($t0)			# float max_grade = -20.0;
	la	$t0, fz
	l.s	$f2, 0($t0)			# float sum = 0.0;
	
	move	$t1, $a0			# p = st;
	mul	$t3, $a1, 44			# $t3 = ns * 44;
	addu	$t3, $t3, $a0			# $t3 = st + ns * 44; (in address terms)
max_while:					# while(1) {
	bge	$t1, $t3, max_endw			# if (p >= (st + ns)) break;
	
	l.s	$f4, 40($t1)				# $f4 = p->grade
	add.s	$f2, $f2, $f4				# sum += p->grade;
	
	
max_if:
	c.le.s	$f4, $f0
	bc1t	max_endif				# if (p->grade > max_grade) {
	mov.s	$f0, $f4					# max_grade = p->grade;
	move	$t2, $t1					# pmax = p;
max_endif:						# }
	addiu	$t1, $t1, 44				# p++;
	j	max_while			# }
max_endw:
	mtc1	$a1, $f6			# $f6 = (int) ns;
	cvt.w.s	$f6, $f6			# $f6 = (float) ns;
	
	div.s	$f6, $f2, $f6			# $f6 = sum / (float) ns;
	s.d	$f6, 0($a2)			# *media = sum / (float) ns; 
	
	move	$v0, $t2			# return pmax;
	
	jr	$ra			# }


