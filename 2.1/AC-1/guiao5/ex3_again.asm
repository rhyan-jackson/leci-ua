	.data
	
lista:	.word 8, -4, 3, 5, 124, -15, 87, 9, 27, 15
str:	.asciiz "\nConteudo do array:\n"
str1:   .asciiz "; "
	.eqv SIZE, 10
	.eqv TRUE, 1
	.eqv FALSE, 0
	.text
	.globl main
	
	
	# reg map for printing
	# $t0 - p 
	# $t1 - lista + 4 * SIZE
	# $t2 - *p
	
main:					# void main (void) {
	
	li	$v0, 4	
	la	$a0, str		
	syscall					# print_string(str);
	
	
	la	$t0, lista			# p = lista;
	
	li	$t1, SIZE  	        	# $t1 =  SIZE
	sll	$t1, $t1, 2			# $t1 = 4 * SIZE
	
	addu	$t1, $t0, $t1 	        	# $t1 = lista + 4 * SIZE		
while1:						# while() {
	bge	$t0, $t1, endw1				# if ( p >= lista + SIZE ) break;
	
	lw	$t2, 0($t0)				# $t2 = *p;
	
	
	li	$v0, 1
	move	$a0, $t2
	syscall						# print_int10(*p);
	
	li	$v0, 4
	la	$a0, str1
	syscall						# print_string("; ");
	
	addiu	$t0, $t0, 4				# p++;
	j	while1
endw1:						# }

# -----------------------------------------------------------------------------------------
# reg map for sorting
	# $t0 - houveTroca
	# $t1 - i
	# $t2 - aux

do3:						# do {
	li	$t0, FALSE				# houveTroca = FALSE;
	
	li	$t1, 0					# i = 0;
	
while2:	
	li	$t2, SIZE				# aux = SIZE
	addi	$t2, $t2, -1				# aux = SIZE - 1
	bge	$t1, $t2, endw2				# while (i < SIZE - 1) {
	
	la	$t3, lista					# $t3 = &lista
	sll	$t4, $t1, 2					# $t4 = 4 * i
	addu	$t5, $t3, $t4					# $t5 = &(lista[i])
	lw	$t6, 0($t5)					# $t6 = lista[i]
	lw	$t7, 4($t5)					# $t7 = lista[i+1]
	
if1:
	ble	$t6, $t7, endif1				# if (lista[i] > lista[i+1]) {
	
	lw	$t2, 0($t5)						# aux = lista[i];
	sw	$t7, 0($t5)						# lista[i] = lista[i+1];
	sw	$t2, 4($t5)						# lista[i+1] = aux;
	li	$t0, TRUE						# houveTroca = TRUE;
endif1:								# }
	addiu	$t1, $t1, 1					# i++;
	j	while2
endw2:							# }

while3:						
	bne	$t0, TRUE, endw3		# } while (houveTroca==TRUE);
	j	do3
endw3:

# --------------------------------------------------------------------------------------------------

	li	$v0, 4	
	la	$a0, str		
	syscall					# print_string(str);
	
	
	la	$t0, lista			# p = lista;
	
	li	$t1, SIZE  	        	# $t1 =  SIZE
	sll	$t1, $t1, 2			# $t1 = 4 * SIZE
	
	addu	$t1, $t0, $t1 	        	# $t1 = lista + 4 * SIZE		
while4:						# while() {
	bge	$t0, $t1, endw4				# if ( p >= lista + SIZE ) break;
	
	lw	$t2, 0($t0)				# $t2 = *p;
	
	
	li	$v0, 1
	move	$a0, $t2
	syscall						# print_int10(*p);
	
	li	$v0, 4
	la	$a0, str1
	syscall						# print_string("; ");
	
	addiu	$t0, $t0, 4				# p++;
	j	while4
endw4:						# }


	jr	$ra			# }
