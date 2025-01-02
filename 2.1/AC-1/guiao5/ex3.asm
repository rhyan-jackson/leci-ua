	.data
	.eqv	SIZE, 10
lista:	.space	40
str:	.asciiz "\nConteudo do array:\n"
str1:   .asciiz "; "
	.eqv	TRUE, 1
	.eqv	FALSE, 0
	.text
	.globl main
	
main:				# void main( void ) {
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
# -------------------------------------------------------------------------

# (lista[i] - $t0) (lista[i+1] - $t1) (houveTroca - $t3) (i - $t4) (aux - $t5) (&lista - $t6) (&lista + i * 4 - $t7)
	

do2:					# do {
	li	$t3, FALSE			# houveTroca = FALSE;
	
	li	$t4, 0				# i = 0;
while3:						# while() {
	bge	$t4, 9, endw3			# if (i >= SIZE - 1) break;

	la	$t6, lista				# $t6 = &lista;
	sll	$t7, $t4, 2				# $t7 = i << 2;
	addu	$t7, $t7, $t6				# $t7 = &lista + i * 4
	
	
	lw	$t0, 0($t7)				# $t0 = lista[i];
	lw	$t1, 4($t7)				# $t1 = lista[i + 1];
	
if1:	ble	$t0, $t1, endif1			# if (lista[i] > lista[i+1]) {
	move	$t5, $t0					# aux = lista[i];
	move	$t0, $t1					# lista[i] = lista[i+1]
	move	$t1, $t5					# lista[i+1] = aux;
	li	$t3, TRUE					# houveTroca = TRUE;
endif1:							# }

	addiu	$t4, $t4, 1				# i++;
	j	while3
endw3:						# }

while2:
	beq	$t3, TRUE, endw2       # while (houveTroca == TRUE);
	j	do2			
endw2: 
	
	jr	$ra		# }
