	.data

	.eqv print_string, 4
	.eqv print_char, 11
	.eqv read_int, 5
	
str1:	.asciiz "Introduza um numero: "
str2:	.asciiz "\nO valor em binario e': " 
	.text

	.globl main
	# value | $t0    bit | $t1    i | $t2	  aux | $t3	flag | $t4
main:
	li	$t4, 0			# flag = 0;
	li	$v0, print_string
	la	$a0, str1
	syscall				# print_string(str1);
	
	li	$v0, read_int		
	syscall				# read_int();
	
	move	$t0, $v0		# value = read_int();
	
	li	$v0, print_string
	la	$a0, str2
	syscall				# print_string(str2);
	
	li	$t2, 0			# i = 0;
	
while1:
	bge	$t2, 32, endWhile1	# while (i < 32) {
	
	li	$t3, 0x80000000		# aux = 0x80000000; ------------------------------
	and	$t1, $t0, $t3		# bit = value & aux;
	srl	$t1, $t1, 31		# bit = (value & aux) << 31;
	
if1:
	beq	$t1, 1, else1		# if (bit != 1) {
	j 	endif1			# }
else1:					# else {
	li	$t4, 1			# flag = 1
	
endif1:					# }

if3:
	beq	$t4, 0, endif3		# if ( flag != 0) {
	
	rem	$t3, $t2, 4		# aux = i % 4;
if2:			
	beq	$t3, 0,	else2		#if (aux != 0) {

	j	endif2			# }
else2:					# else {

	li	$v0, print_char
	li	$a0, ' '
	syscall				# print_char(' ');

endif2:					# }
	
	addi	$t3, $t1, 0x30		# aux = bit + 0x30
	
	li	$v0, print_char
	move	$a0, $t3 
	syscall				# print_char(aux);

endif3:					# }
	
	
	sll	$t0, $t0, 1		# value = value << 1;
	addiu	$t2, $t2, 1		# i++;
	j	while1
endWhile1:				# }

	jr	$ra
	
	