#################################################################
#	Name		Align		Size		Offset
# int id_number		4		4		0
# char first_name[18]	1		18		4
# char last_name[15]	1		15		22
# float grade		4		4		37 > 40
#			4		44

# IMPLEMENT B)

	.eqv	id_number, 0
	.eqv	first_name, 4
	.eqv	last_name, 22
	.eqv	grade, 40
	.data
#stg:	.word 72343
#	.asciiz	"Napoleao"
#	.space	9
#	.asciiz "Bonaparte"
#	.space 5
#	.float 7.4

stg:	.space 44
str1:	.asciiz	"\nN. Mec.: "
str2:	.asciiz "\nNome: "
str3:	.asciiz	"\nApelido: "
str4:	.asciiz "\nNota: "
	.text
	.globl main

main:				# int main(void) {
	
	li	$v0, 4
	la	$a0, str1
	syscall				# print_str(str1);
	
	la	$t0, stg		# student *pt = &stg;
	lw	$a0, id_number($t0)
	li	$v0, 36
	syscall				# print_intu10(stg.id_number);
	
	li	$v0, 4
	la	$a0, str2
	syscall				# print_str(str2);
	
	li	$v0, 4
	addiu	$a0, $t0, last_name
	syscall				# print_str(stg.last_name);
	
	li	$v0, 11
	li	$a0, ','
	syscall				# print_char(',');
	
	li	$v0, 4
	addiu	$a0, $t0, first_name
	syscall				# print_char('stg.first_name');
	
	li	$v0, 4
	la	$a0, str3
	syscall				# print_str(str3);
	
	l.s	$f12, grade($t0)
	li	$v0, 2
	syscall				# print_float(stg.grade);
	
	
	
	li	$v0, 0			# return 0;
	jr	$ra			# }