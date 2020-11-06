.data

	msg1:.asciiz "Qual a sua data de nascimento "
	msg2: .asciiz "A sua idade é "
	msg3:.asciiz " anos"
	
.text

	li $v0, 4 #print string
	la $a0, msg1
	syscall
	
	li $v0, 5 #guarda a idade em $v0
	syscall
	
	li $t0, 2020
	sub $t1,$t0,$v0
	
	li $v0, 4 #print string
	la $a0, msg2
	syscall
	
	li $v0, 1 #print integer
	move $a0, $t1
	syscall
	
	li $v0, 4
	la $a0, msg3
	syscall