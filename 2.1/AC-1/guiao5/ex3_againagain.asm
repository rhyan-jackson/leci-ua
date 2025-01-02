	.data
lista:	.space 40
str1:	.asciiz "\nIntroduza um numero: "
str2:	.asciiz "\nConteudo do array:\n"
str3:   .asciiz "; "
	.text
	.globl	main
	
	.eqv print_string, 4
	.eqv read_int, 5
	.eqv print_int10, 1
	.eqv	SIZE, 10
	.eqv	TRUE, 1
	.eqv	FALSE, 0

main:				# void main(void) {

# ------------------------------------------------------------------------ collects
	# reg map
	
	# $t0 (i)
	# $t1 (lista)
	# $t2 (lista + i)
	li	$t0, 0			# int i = 0;
while1:					# while(1) {
	bge	$t0, SIZE, endw1		# if(i >= SIZE) break;
	
	li	$v0, print_string
	la	$a0, str1
	syscall					# print_string(str);
	
	
	la	$t1, lista			# $t1 = &lista;
	sll	$t2, $t0, 2			# $t2 = i * 4;
	addu	$t2, $t1, $t2			# $t2 = &lista + i * 4 = lista[i];
	
	li	$v0, read_int			
	syscall					# read_int();
	
	sw	$v0, 0($t2)			# lista[i] = read_int();
	
	addiu	$t0, $t0, 1			# i++;
	j	while1			# }
endw1:
# ------------------------------------------------------------------------ prints
	# $t0 - p
	# $t1 - lista + 4 * SIZE
	# $t2 - *p
	
	li	$v0, 4			
	la	$a0, str2		
	syscall				# print_string(str2);
	
	
	la	$t0, lista		# p = lista;
	
	li	$t1, SIZE  	        # $t1 =  SIZE
	sll	$t1, $t1, 2		# $t1 = 4 * SIZE
	
	addu	$t1, $t0, $t1 	        # $t1 = lista + 4 * SIZE		
while2:					# while() {
	bge	$t0, $t1, endw2			# if ( p >= lista + SIZE ) break;
	
	lw	$t2, 0($t0)			# $t2 = *p;
	
	li	$v0, print_int10
	move	$a0, $t2
	syscall					# print_int10(*p);
	
	li	$v0, print_string
	la	$a0, str3
	syscall					# print_string("; ");
	
	addiu	$t0, $t0, 4			# p++;
	j	while2
endw2:					# }

# ------------------------------------------------------------------------
	# reg map
	# houveTroca ($t0)
	# i ($t1)
	# aux ($t2)
	
do3:					# do {
	li	$t0, FALSE			# houveTroca = FALSE;
	li	$t1, 0 				# i = 0;
	
while4:						# while(1) {
	li	$t2, SIZE				# $t2 = SIZE;
	addi	$t2, $t2, -1				# $t2 = SIZE - 1;
	
	bge	$t1, $t2, endw4				# if (i >= SIZE-1) break;
	
	sll	$t3, $t1, 2				# $t3 = i * 4
	la	$t4, lista				# $t4 = &lista
	addu	$t3, $t3, $t4				# $t3 = &lista[i]
	lw	$t4, 0($t3)				# $t4 = lista[i]
	lw	$t5, 4($t3)				# $t5 = lista[i+1]
	
if1:	ble	$t4, $t5, endif1			# if (lista[i] > lista[i+1]) {

	move	$t2, $t4					# aux = lista[i];
	sw	$t5, 0($t3)					# lista[i] = lista[i+1]
	sw	$t2, 4($t3)					# lista[i+1] = aux;
	li	$t0, TRUE					# houveTroca = TRUE;
endif1:							# }
	addiu	$t1, $t1, 1				# i++;
	j	while4				# }
endw4:

while3:					
	bne	$t0, TRUE, endw3  		# } while (houveTroc == TRUE);
	j	do3		
endw3:

# ------------------------------------------------------------------------ prints
	# $t0 - p
	# $t1 - lista + 4 * SIZE
	# $t2 - *p

	li	$v0, 4			
	la	$a0, str2		
	syscall				# print_string(str2);
	
	
	la	$t0, lista		# p = lista;
	
	li	$t1, SIZE  	        # $t1 =  SIZE
	sll	$t1, $t1, 2		# $t1 = 4 * SIZE
	
	addu	$t1, $t0, $t1 	        # $t1 = lista + 4 * SIZE		
while5:					# while() {
	bge	$t0, $t1, endw5			# if ( p >= lista + SIZE ) break;
	
	lw	$t2, 0($t0)			# $t2 = *p;
	
	li	$v0, print_int10
	move	$a0, $t2
	syscall					# print_int10(*p);
	
	li	$v0, print_string
	la	$a0, str3
	syscall					# print_string("; ");
	
	addiu	$t0, $t0, 4			# p++;
	j	while5
endw5:					# }

	jr	$ra		# }