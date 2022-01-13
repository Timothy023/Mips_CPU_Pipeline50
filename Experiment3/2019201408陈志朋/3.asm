main:
	li 		$v0,	5							# 输入n（$t0）
	syscall
	move 	$t0,	$v0
	li		$t1,	0
	li		$s0,	16							# 设置数组的起始地址
START_INPUT:
	slt		$t2,	$t1,	$t0
	beq		$t2,	0,		END_INPUT
	
	li 		$v0,	5							# 输入到数组中
	syscall
	sw		$v0,	($s0)
	add		$s0,	$s0,	4

	add		$t1,	$t1,	1
	j		START_INPUT
END_INPUT:

	li		$t1,	0 							# 循环变量
	li		$s0,	16 							# 数组起始地址
	li		$t3,	0 							# 当前最远能到达的位置
START:
	slt		$t2,	$t1,	$t0
	beq		$t2,	0,		END					# 判断当前是否已经遍历结束
	slt		$t2,	$t3,	$t1
	beq		$t2,	1,		FALSE				# 如果最远能到达的位置小于当前位置，则表示当前位置无法到达
	
	lw		$t5,	($s0)
	add		$t5,	$t5,	$t1					# 计算从当前格子能到达的最远位置
	slt		$t2,	$t3,	$t5
	beq		$t2, 	0,		ISMAX				# 更新当前能到达的最远位置
	move	$t3,	$t5
	
ISMAX:
	add		$s0,	$s0,	4
	add		$t1,	$t1,	1
	j		START
END:
	la 		$a0,	str_true					# 输出最后一个位置可以到达
	li		$v0,	4
	syscall
	j		END_ALL
FALSE:
	la 		$a0,	str_false					# 输出最后一个位置无法到达
	li		$v0,	4
	syscall	
END_ALL:

.data 
    str_true:
        .ascii "True\0"
    str_false:
    	.ascii "False\0"
