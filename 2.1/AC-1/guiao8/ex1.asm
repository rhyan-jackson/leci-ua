	.data
str:	.asciiz "2020 e 2024 sao anos bissextos"
	.text
	.globl main
	.eqv print_int10, 1

main:						# int main(void) {
	addiu	$sp, $sp, -4
	sw	$ra, 0($sp)				# prologo (salva-guardado $ra)
	
	la	$a0, str
	jal	atoi					# $v0 = atoi(str);
	
	move 	$a0, $v0
	li	$v0, print_int10		
	syscall						# print_int10(atoi(str);
	
	li	$v0, 0					# return 0;
	
	lw	$ra, 0($sp)				# epilogo
	addiu	$sp, $sp, 4
	jr	$ra				# }


	
	
	# REG MAP
	# res -> $v0
	# digit -> $t0
	
atoi:						# unsigned int atoi(char* s) {
	
	li	$v0, 0					# res = 0;

atoi_while:						# while(1) {
	lb	$t1, 0($a0)					# $t1 = *s;
	blt	$t1, '0', atoi_endw				# 
	bgt	$t1, '9', atoi_endw				# if( *s < '0' || *s > '9') break;
	addiu	$a0, $a0, 1					# s++;
	li	$t2, '0'		
	sub	$t0, $t1, $t2					# digit = *s++ - '0';
	mulu	$v0, $v0, 10					# res = res * 10;
	addu	$v0, $v0, $t0					# res += digit;

	j	atoi_while
atoi_endw:
	jr	$ra				# }