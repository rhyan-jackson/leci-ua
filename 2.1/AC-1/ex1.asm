	.data
ft1:	.float 1.0
str1:	.asciiz	"Digite a base B (float): "
str2:	.asciiz	"Digite o expoente E (inteiro): "
str3:	.asciiz "\nB^E = "
	.text
	.globl main
	
	# reg map
	# x > $f20; result > $f22; i > $s0; y > $s1
xtoy:					# float xtoy(float x, int y) {
	
	addiu	$sp, $sp, -20
	sw	$ra, 0($sp)
	sw	$s0, 4($sp)
	sw	$s1, 8($sp)
	s.s	$f20, 12($sp)
	s.s	$f22, 16($sp)		# end of prologue
	
	mov.s	$f20, $f12		# x
	move	$s1, $a0		# y
	li	$s0, 0			# i = 0;
	la	$t0, ft1
	l.s	$f22, 0($t0)		# result = 1.0;

xtoy_while:				# while(1) {
	move	$a0, $s1
	jal	abs
	bge	$s0, $v0, xtoy_endw		# if (i >= abs(y)) break;

xtoy_if:
	blez	$s1, xtoy_else			# if (y > 0)
	mul.s	$f22, $f22, $f20			# result *= x;
	j	xtoy_endif
xtoy_else:					# } else {
	div.s	$f22, $f22, $f20			# result /= x;
xtoy_endif:					# }

	addi	$s0, $s0, 1		# i++;
	j	xtoy_while
xtoy_endw:				# }
	mov.s	$f0, $f22		# return result;

	lw	$ra, 0($sp)		# start of epilogue
	lw	$s0, 4($sp)
	lw	$s1, 8($sp)
	l.s	$f20, 12($sp)
	l.s	$f22, 16($sp)	
	addiu	$sp, $sp, 20
	jr	$ra		# }
	
abs:				# int abs(y) {
	bgez	$a0, abs_endif		# if (val < 0)
	sub	$a0, $0, $a0			# val = -val;
	
abs_endif:
	move	$v0, $a0		# return val;
	jr	$ra		# }

main:				# void main(void) {
	addiu	$sp, $sp, -4
	sw	$ra, 0($sp)	# prologo
	
	li	$v0, 4
	la	$a0, str1
	syscall				# print_str(str1);
	li	$v0, 6
	syscall
	
	mov.s	$f12, $f0		# float x = read_float();
	
	li	$v0, 4
	la	$a0, str2
	syscall				# print_str(str2);
	li	$v0, 5
	syscall
	
	move	$a0, $v0		# int y = read_int();
	jal	xtoy
	mov.s	$f12, $f0		# float result = xtoy(x, y);
	li	$v0, 4
	la	$a0, str3
	syscall				# print_str(str3);
	li	$v0,2
	syscall				# print_float(result);
	li	$v0, 0			# return 0;
		
	lw	$ra, 0($sp)	# epilogo
	addiu	$sp, $sp, 4 
	jr	$ra		# }