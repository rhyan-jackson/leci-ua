	.data
	.eqv SIZE, 3
	.eqv print_string, 4
	.eqv print_char, 11
	.eqv print_int10, 1
str1:	.asciiz "Array"
str2:	.asciiz "de"
str3:	.asciiz "ponteiros"

str4:	.asciiz "\nString #"
str5:	.asciiz ": "
	.align 2
array:	.word str1, str2, str3
	.text
	.globl main
	
	#reg map
	# i -> $t0
	# j -> $t1
	# &array -> $t7

main:						# void main( void ) {

	li	$t0, 0				# i = 0;
while1:						
	bge	$t0, SIZE, endw1		# while(i < SIZE) {
	li	$v0, print_string		
	la	$a0, str4
	syscall						# print_string( "\nString #");
	
	li	$v0, print_int10
	move	$a0, $t0
	syscall						# print_int10(i);
	
	li	$v0, print_string		
	la	$a0, str5
	syscall						# print_string( ": ");
	
	li	$t1, 0					# j = 0

while2:							# while (1) {
	
	sll	$t2, $t0, 2					# $t2 = 4 * i
	addu	$t2, $t2, $t7					# $t2 = &array + 4 * i = array[i]

	addu	$t2, $t2, $t1					# $t2 = &array + 4 * i + j = array[i][j]

	beq	$t2, '\0', endw2				# if ( array[i][j] == '\0' ) break;
	
	# FAZER AQUI O RESTANTE
endw2:



	addiu	$t0, $t0, 1				# i++;
	j	while1				#	}
endw1:

	jr	$ra				# }
