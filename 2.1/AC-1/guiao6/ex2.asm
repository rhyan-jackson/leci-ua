	.data
	.eqv SIZE, 3
	.eqv print_string, 4
	.eqv print_char, 11
array:	.word str1, str2, str3
str1:	.asciiz "Array"
str2:	.asciiz "de"
str3:	.asciiz "ponteiros"
	.text
	.globl main
	
	#reg map
	# **p -> $t0
	# **pultimo -> $t1
	
main:				# void main(void) {
	la	$t0, array		# $t0 = &array;
	li	$t1, SIZE		# $t1 = SIZE;
	sll	$t1, $t1, 2		# $t1 = 4 * SIZE;
	addu	$t1, $t1, $t0		# $t1 = &array + 4 * SIZE = **pultimo
	
while1:					
	bge	$t0, $t1, endw1		# while( p < pultimo ) {
	
	lw	$a0, 0($t0)			# $a0 = *p;
	li 	$v0, print_string
	syscall					# print_string(*p);
	
	li	$a0, '\n'
	li	$v0, print_char			
	syscall					# print_char('\n');
	
	addiu	$t0, $t0, 4			# p++; ( p = p + 4 )
	j	while1			# }
endw1:					
	jr	$ra		# }