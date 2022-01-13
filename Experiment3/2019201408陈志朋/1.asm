main:
	j		INPUT
ERROR:
	la		$a0,	err					# 输出错误信息
	li		$v0,	4
	syscall
INPUT:
	li 		$v0,	5					# 输入a（$t0）
	syscall
	move 	$t0,	$v0
	li 		$v0,	5					# 输入b（$t1）
	syscall
	move 	$t1,	$v0
	li 		$v0,	5					# 输入c（$t2）
	syscall
	move 	$t2,	$v0
	slt		$t4,	$zero,	$t0			# 判断a和0的大小
	beq		$t4,	$zero,	ERROR
	slt		$t4,	$zero,	$t1			# 判断b和0的大小
	beq		$t4,	$zero,	ERROR
	slt		$t4,	$zero,	$t2			# 判断c和0的大小
	beq		$t4,	$zero,	ERROR

	mul		$t4,	$t0,	$t1
	mul		$t4,	$t4,	$t2			# 计算a * b * c
	move 	$a0,	$t4
	li		$v0,	1
	syscall
	
	la		$a0,	mid					# 输出两个答案之间的空格
	li		$v0,	4
	syscall
	
	mul		$t4,	$t0,	$t1			# 计算a * b
	mul		$t5,	$t0,	$t2			# 计算a * c
	mul		$t6,	$t1,	$t2			# 计算b * c
	add		$t4,	$t4,	$t5			
	add		$t4,	$t4,	$t6
	mul		$t4,	$t4,	2			# 计算(ab + ac + bc) * 2
	move 	$a0,	$t4
	li		$v0,	1
	syscall	

.data
	mid:
        .ascii " \0"
    err:
        .ascii "Illegal Input\n\0"
