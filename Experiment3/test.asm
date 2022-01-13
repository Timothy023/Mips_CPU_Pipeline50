main:
	li $v0, 5
	syscall

	move $a0, $v0
	li $v0, 1
	syscall
	
	la $a0, str
	li $v0, 4
	syscall

.data 
    str:
        .ascii "Illegal Input"
