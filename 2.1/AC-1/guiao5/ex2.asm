	.data
	
lista:	.word 8, -4, 3, 5, 124, -15, 87, 9, 27, 15
str:	.asciiz "\nConteudo do array:\n"
str1:   .asciiz "; "
	.eqv SIZE, 10
	.text
	.globl main
	
	
	# $t0 - p
	# $t1 - lista + 4 * SIZE
	# $t2 - *p
main:					# void main (void) {
	
	li	$v0, 4			# 
	la	$a0, str		
	syscall				# print_string(str);
	
	
	la	$t0, lista		# p = lista;
	
	li	$t1, SIZE  	        # $t1 =  SIZE
	sll	$t1, $t1, 2		# $t1 = 4 * SIZE
	
	addu	$t1, $t0, $t1 	        # $t1 = lista + 4 * SIZE		
while1:					# while() {
	bge	$t0, $t1, endw1		# if ( p >= lista + SIZE ) break;
	
	lw	$t2, 0($t0)		# $t2 = *p;
	
	
	li	$v0, 1
	move	$a0, $t2
	syscall				# print_int10(*p);
	
	li	$v0, 4
	la	$a0, str1
	syscall				# print_string("; ");
	
	addiu	$t0, $t0, 4		# p++;
	j	while1
endw1:					# }
	jr	$ra			# }