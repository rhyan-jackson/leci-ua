	.data
str:	.asciiz "\nIntroduza um numero: "
	.align 2
lista:	.space 20
	.eqv SIZE, 5
	.text
	
	.globl main
	
	# register map
	# i - $t0
	# lista - $t1
	# lista + i - $t2
	# lista + 4 * i - $t3
	# aux - $t4
main:					# void main(void) {
	li	$t0, 0			# int i = 0;
	
while1:					# while() {
	bge	$t0, SIZE, endw1		# if (i >= SIZE) break;
	li	$v0, 4
	la	$a0, str
	syscall				# print_string(str);
	
	li	$v0, 5
	syscall				# read_int();

	la	$t1, lista		# $t1 = lista; ( load adress to lista)
	sll	$t3, $t0, 2		# lista + 4 * i = i << 2;
	addu	$t3, $t1, $t3		# lista + 4 * i = lista + i << 2;
	
	sw	$v0, 0($t3)		# lista[lista + 4 * i] = aux;
	
	addiu	$t0, $t0, 1		# i++;
	
	j 	while1

endw1:					# }

	jr	$ra