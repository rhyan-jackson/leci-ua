	.data
#lista:	.space 40
lista:	.word 8, -4, 3, 5, 124, -15, 87, 9, 27, 15
	.text
	.eqv SIZE, 10
	.eqv FALSE, 0
	.eqv TRUE, 1
	.globl main
	# reg map
	# $t0 = houveTroca
	# $t1 = aux
	# $t2 = p
	# $t3 = pUltimo
	

main:				# void main(void) {
	la	$t4, lista		# $t4 = &lista
	li	$t5, SIZE		# $t5 = SIZE
	addi	$t5, $t5, -1		# $t5 = SIZE -1
	sll 	$t5, $t5, 2		# $t5 = 4 * SIZE - 4
	addu	$t3, $t4, $t5		# pUltimo = lista + 4 * (SIZE - 1)
	
do1:					# do {
	li	$t0, FALSE			# houveTroca = FALSE;
	la	$t2, lista			# p = lista;
while2:
	bge	$t2, $t3, endw2			# while (p < pUltimo) {
	lw	$t4, 0($t2)				# $t4 = *p
	lw	$t5, 4($t2)				# $t5 = *(p + 1)
if1:
	ble	$t4, $t5, endif1			# if (*p > *(p+1)) {
	move 	$t1, $t4					# aux = *p;
	sw	$t5, 0($t2)					# *p = *(p+1);
	sw	$t1, 4($t2)					# *(p+1) = aux;
	li	$t0, TRUE					# houveTroca = TRUE;
endif1:							# }
	addiu	$t2, $t2, 4				# p++;
	j	while2				# }
endw2:

while1:					
	beq 	$t0, FALSE, endw1 	# } while ( houveTroca == TRUE )
	j	do1
endw1:
	
	jr	$ra		# }