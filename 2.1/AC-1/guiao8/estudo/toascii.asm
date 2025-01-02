	.text
	.globl toascii
toascii:			# char toascii(char v) {
	addiu	$a0, $a0, '0'		# v += '0';
	
toascii_if:
	ble	$a0, '9', toascii_endif
	addiu	$a0, $a0, 7		# v += 7;
toascii_endif:
	move	$v0, $a0		# return v;
	jr	$ra		# }
