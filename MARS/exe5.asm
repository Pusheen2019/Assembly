.data

	msg1:.asciiz "Qual a sua idade? "
	msg2: .asciiz "A sua idade é "
	
.text

	li $v0, 4 #print string
	la $a0, msg1
	syscall
	
	li $v0, 5 #guarda a idade em $v0
	syscall
	
	move $t0, $v0
	
	li $v0, 4 #print string
	la $a0, msg2
	syscall
	
	li $v0, 1 #print integer
	move $a0, $t0
	syscall