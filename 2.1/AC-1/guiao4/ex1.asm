	.eqv read_string, 8
	.eqv print_int10, 1
	.eqv SIZE,20
	.data
str:	.space 21
	.text
	.globl main
# num -> $t0; i-> $t1; str -> $t2; str+i -> $t3, str[i] -> $t4

main:					#  int main(void) {
	li 	$v0, read_string
	la 	$a0, str	
	li 	$a1, SIZE
	syscall				#	read_string(str, SIZE);
	
	li 	$t0, 0			#	int num = 0;
	li 	$t1, 0			#	int i = 0;
	
while:					#	while() {
	la 	$t2, str		#		char *p1 = &(str[0]);
	addu	$t3, $t2, $t1   	#		char *p2 = p1 + i;
	lb	$t4, 0($t3)		#		char val = *p2;
	beq	$t4, '\0', endw		#		if (val == '\0') break;
if:
	blt	$t4, '0', endif
	bgt	$t4, '9', endif		#		if (val >= '0' && val <= '9')
	addi	$t0, $t0, 1		#			num++;
endif:
	addi	$t1, $t1, 1		#		i++;
	j 	while			#	}
endw:
	li 	$v0, print_int10
	move	$a0, $t0
	syscall				#	print_int10(num);

	jr	$ra			#  }