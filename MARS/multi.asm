.text #diretiva para instruções Assembly

	li $t0, 10
	li $t1, 15
	
	mul $s0, $t0, $t1 #realiza a multiplicação entre registadores s0 = t0 * t1
	
	sll $s1, $t0, 10 #shift left de $t0*2^10
	
	li $v0, 1
	
	move $a0, $s1
	syscall
	
	li $v0, 10
	syscall 
