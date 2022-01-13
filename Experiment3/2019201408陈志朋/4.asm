main:
#	li		$s0,	2
#	li		$s1,	5
#	li		$s2,	0
	
	move	$t0,	$zero
START_A:
	slt		$t2,	$t0,	$s0
	beq		$t2,	$zero,	END_A 	# 判断循环条件
	move	$t1,	$zero
START_B:
	slt		$t2,	$t1,	$s1
	beq		$t2,	$zero,	END_B 	# 判断循环条件
	add		$t2,	$t0,	$t1		# 计算i + j
	sll		$t3,	$t1,	4		# 偏移量为j * 4 * 4
	add		$t3,	$t3,	$s2
	sw		$t2,	($t3)			# 储存到数组
	addi	$t1,	$t1,	1
	j		START_B 				# 循环
END_B:
	addi	$t0,	$t0,	1
	j	START_A 					# 循环
END_A:
