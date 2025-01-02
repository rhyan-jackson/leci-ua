	.data
	.eqv SIZE, 5
	.eqv print_string, 4
	.eqv read_int, 5
lista:	.space 20
str:	.asciiz "\nIntroduza um numero: "
	.text
	.globl main
	# reg map
	
	# $t0 (i)
	# $t1 (lista)
	# $t2 (lista + i)
main: 				# void main(void) {
	
	li	$t0, 0			# int i = 0;
while1:					# while(1) {
	bge	$t0, SIZE, endw1		# if(i >= SIZE) break;
	
	li	$v0, print_string
	la	$a0, str
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
	jr	$ra		# }