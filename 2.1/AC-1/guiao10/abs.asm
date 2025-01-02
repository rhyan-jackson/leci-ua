	.data
	.text
	.globl abs

abs:					# int abs(int val) {
abs_if:
	bgez	$a0, abs_endif			# if (val < 0) {
	mul	$a0, $a0, -1				# val = -val;
abs_endif:					# }
	move	$v0, $a0			# return val;
	jr	$ra			# }