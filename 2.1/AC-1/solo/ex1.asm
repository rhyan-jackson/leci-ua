	.data
str1:	.asciiz "No set bits\n"
	.text
	.globl main
	.eqv read_int, 5
	.eqv print_int10, 1
	.eqv print_string, 4
	# reg map
	# num ($t0)
	# i ($t1)
	# order ($t2)
	
	
main:				# void main( void ) {

	li	$t2, -1			# int order = -1;
	
	li	$v0, read_int
	syscall				# $v0 = read_int();
	
	move	$t0, $v0		# num = read_int();
	li	$t1, 0			# i = 0;

do1:					# do {
	andi	$t3, $t0, 1			# $t3 = num & 1;
if1:
	bne	$t3, 1, endif1			# if ((num & 1)  == 1) {
	move	$t2, $t1				# order = i;
endif1:						# }
	srl	$t0, $t0, 1			# num = num >> 1;
	addiu	$t1, $t1, 1			# i++;
	
enddo1:	blt	$t1, 32, do1		# } while(i < 32);

if2:
	beq	$t2, -1, else2		# if (order != -1 ) {
	
	li	$v0, print_int10
	move	$a0, $t2
	syscall					# print_in10(order);
	j	endif2
else2:					# } else {
	li	$v0, print_string
	la	$a0, str1
	syscall					# print_stirng(str1);
endif2:					# ]
	jr	$ra		# }
