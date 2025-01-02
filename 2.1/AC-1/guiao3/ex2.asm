	.data
str1:	.asciiz "Introduza um numero: "
str2:	.asciiz "\nO valor em binario e': "

	.text
	.globl main
	
	# register map
	# value -> $t0 , bit -> $t1 , i -> $t2, aux -> $t3, flag -> $t4
	
main:					# void main(void) {

	li	$t2, 0			# int i = 0;
	li	$t1, 0			# int bit = 0;
	li	$t4, 0			# int flag = 0;
	
	li	$v0, 4
	la	$a0, str1
	syscall 			# print_string("Introduza um numero: ");
	
	li	$v0, 5	
	syscall				# read_int();
	
	ori 	$t0, $v0, 0		#value = read_int();
	
	li	$v0, 4
	la 	$a0, str2
	syscall				# print_string("\nO valor em binário e': ");
	
while:
	bge 	$t2, 32, endWhile	# while (i < 32) {
	srl 	$t1 , $t0, 31		# bit = value >> 31;

if2:	beq	$t4, 1, execute_if2
	bne	$t1, 0, execute_if2		# if (flag == 1 || bit != 0) {
	j	endif2
	
execute_if2:
	
	li	$t4, 1			# flag = 1;
	rem 	$t3, $t2, 4		# aux = i % 4;
	
if1:	bne 	$t3, 0, endif1		
	beq 	$t2, 0, endif1		# if (aux == 0 && i != 0) {
	
	li	$v0, 11
	li	$a0, ' '
	syscall				# print_char(' ');	
endif1:					# 		}
	
	li	$v0, 11
	addi	$a0, $t1, 0x30
	syscall				# print_char(0x30 + bit);
	
endif2:					# 	}
	
	sll	$t0, $t0, 1		# value = value << 1;
	
	addi	$t2, $t2, 1		# i++;
	j	while
endWhile:				# }
	jr	$ra
	 
	
	
