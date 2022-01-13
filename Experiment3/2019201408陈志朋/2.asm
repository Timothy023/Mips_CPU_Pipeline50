main:
	li 		$v0,	5				#  ‰»În£®$t0£©
	syscall
	move 	$t0,	$v0
	li		$t1,	1				# i = 1
	li		$t2,	1				# a = 1 ( f(0) )
	li		$t3,	1				# b = 1 ( f(1) )
START:
	slt		$t4,	$t1,	$t0		# i < n
	beq		$t4,	0,		END
	add		$t4,	$t2,	$t3		# c = a + b
	move	$t2,	$t3				# a = b
	move	$t3,	$t4				# b = c
	add		$t1,	$t1,	1		# i = i + 1
	j		START
END:
	move	$a0,	$t3				#  ‰≥ˆb
	li		$v0,	1
	syscall
