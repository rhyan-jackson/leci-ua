	.text
	.globl exchange
# c1 -> $a0
# c2 -> $a1
# aux -> $t0
exchange:			# void exchange(char *c1, char *c2) {
	lb	$t0, 0($a0)		# char aux = *c1;
	lb	$t1, 0($a1)		# $t1 = *c2;
	sb	$t1, 0($a0)		# *c1 = *c2;
	sb	$t0, 0($a1)		# *c2 = aux;
	jr	$ra		# }
