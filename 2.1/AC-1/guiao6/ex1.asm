	.data
	.eqv SIZE, 3
	.eqv print_string, 4
	.eqv print_char, 11
str1:	.asciiz "Array"
str2:	.asciiz "de"
str3:	.asciiz "ponteiros"
	.align 2
array:	.word str1, str2, str3

	.text
	.globl main
	# Reg map
	# $t0 -> &array
	# $t7 -> i
main:				# void main( void ) {

	li	$t7, 0			# i = 0;

while1:					# while() {
	bge	$t7, SIZE, endw1		# if (i >= SIZE) break;				
	la	$t0, array			# $t0 = &array
	sll	$t1, $t7, 2			# $t1 = i * 4;
	addu	$t1, $t1, $t0			# $t1 = i * 4 + &array; = &(array[i])
	lw	$a0, 0($t1)			# $a0 = array[i];
	
	li	$v0, print_string
	syscall					# print_string(array[i]);
	
	li	$v0, print_char
	li	$a0, '\n'
	syscall					# print_char('\n');
					
	addiu	$t7, $t7, 1	        	# i++;
	j	while1
endw1:					# }
	jr	$ra			# }