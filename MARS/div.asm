.text
	li $t0, 100
	li $t1, 2
	
	div $t0, $t1
	
	srl $s2, $t0, 10 # Efeito contrario ao shift left
	
	mflo $s0 #Move para o resgistador lo a parte inteira da divis�o
	mfhi $s1 #Move para o resgistador hi o resto da divis�o
	
	add $t3, $s0, $s1
	
	li $v0, 1
	move $a0, $t3
	syscall 
	
	li $v0, 10
	syscall  
