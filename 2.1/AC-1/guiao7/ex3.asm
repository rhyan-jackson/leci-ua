	.eqv	print_string, 4
	.eqv 	print_int10, 1
	.eqv 	print_char, 11
	.eqv	STR_MAX_SIZE, 30
	.data
str1:	.asciiz	"I serodatupmoC ed arutetiuqrA"
str2:	.space STR_MAX_SIZE
	.space 1
str3:	.asciiz "String too long: "
	.text
	.globl main

# exit_value > $t0
main:					# int main(void) {

	la	$a0, str1
	jal	strlen				# $v0 = strlen(str1);
	
if1:	bgt	$v0, STR_MAX_SIZE, else1	# if (strlen(str1) <= STR_MAX_SIZE) {

	la	$a0, str2
	la	$a1, str1
	jal	strcpy					# strcpy(str2, str1);
	
	li	$v0, print_string
	la	$a0, str2
	syscall						# print_string(str2);
	
	li	$v0, print_char
	li	$a0, '\n'
	syscall						# print_string('\n');
	
	
	la	$a0, str2
	jal	strrev
	
	move	$a0, $v0
	li	$v0, print_string
	syscall						# print_string(strrev(str2));
	
	li	$t0, 0					# exit_value = 0;
	j	endif1				# }
else1:						# } else {
	la	$a0, str3
	li	$v0, print_string
	syscall						# print_string(str3);	
	
	la	$a0, str1
	jal	strlen
	
	move	$a0, $v0
	li	$v0, print_int10
	syscall						# print_int10(strlen(str1));
	
	li	$t0, -1					# exit_value = -1;
endif1:						# }
	
	move	$v0, $t0		# return exit_value;
	jr	$ra			# }


# i > $t0	&dst[i] > $t1	src[i] > $t2
strcpy:				# char* strcpy(char *dst, char *src) {
	li	$t0, 0			# int i = 0;
strcpy_do:				# do {
	addu	$t1, $a0, $t0		# 	$t1 = dst + i = &dst[i]
	addu	$t2, $a1, $t0		# 	$t2 = src + i = &src[i]
	
	lb	$t2, 0($t2)		# 	$t2 = src[i];
	
	sb	$t2, 0($t1)		# 	dst[i] = src[i];
	
	addiu	$t0, $t0, 1
	bne	$t2, '\0', strcpy_do	# } while (src[i++] != '\0');
	
	move	$v0, $a0		# return dst;
	jr	$ra		# }

#####################################
# p1 -> $s0
# p2 -> $s1
# *p2 -> $t0
strrev:					# char *strrev(char* str) {
	# prólogo
	addiu	$sp, $sp, -16
	sw	$ra, 0($sp)
	sw	$s0, 4($sp)
	sw	$s1, 8($sp)
	sw	$s3, 12($sp)
	#########
	
	move	$s3, $a0			# $s3 = &str;
	
	move	$s0, $a0			# char *p1 = str;
	move	$s1, $a0			# char *p2 = str;

strrev_while1:					# while (1) {
	lb	$t0, 0($s1)				# $t0 = *p2;
	beq	$t0, '\0', strrev_endw1			# if (*p2 == '\0') break;
	
	addiu	$s1, $s1, 1
	j	strrev_while1			# }
strrev_endw1:
	addiu	$s1, $s1, -1

strrev_while2:					# while (1) {
	bge	$s0, $s1, strrev_endw2			# if (p1 >= p2) break;
	
	move	$a0, $s0
	move	$a1, $s1
	jal	exchange				# exchange(p1, p2);
	
	addiu	$s0, $s0, 1				# p1++;
	addiu	$s1, $s1, -1				# p2--;	
	
	j	strrev_while2			# }
strrev_endw2:

	move	$v0, $s3			# return str;
	
	# epílogo
	lw	$ra, 0($sp)
	lw	$s0, 4($sp)
	lw	$s1, 8($sp)
	lw	$s3, 12($sp)
	addiu	$sp, $sp, 16
	#########
	jr	$ra			# }
	
###########################################################
# reg map
# len -> $v0
	
strlen:				# int strlen (char *s) {
	li	$v0, 0			# int len = 0;
	
strwhile1:				# while (1) {
	lb	$t0, 0($a0)			# char cc = *s;
	addiu	$a0, $a0, 1			# s++;
	beq	$t0, '\0', strendw1		# if (cc == '\0') break;
	addi	$v0, $v0, 1			# len++;
	j	strwhile1		
		
strendw1:				# }
	jr	$ra		# }
	
################################################
# c1 -> $a0
# c2 -> $a1
# aux -> $t0
exchange:			# void exchange(char *c1, char *c2) {
	lb	$t0, 0($a0)		# char aux = *c1;
	lb	$t1, 0($a1)		# $t1 = *c2;
	sb	$t1, 0($a0)		# *c1 = *c2;
	sb	$t0, 0($a1)		# *c2 = aux;
	jr	$ra		# }
