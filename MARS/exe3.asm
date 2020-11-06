#a = $s0
#b = $s1
#c = $s2
#d = $s3
#e = $s4
#f = $s5

#e= (a-(b - c) + f) 

.text
	li $s0, 10
	li $s1, 5
	li $s2, 2
	li $s3, 3
	li $s4, 20
	li $s5, 50
	
	sub $t1, $s1, $s2
	sub $t2, $s0, $t1
	add $s4, $t2, $s5
	
	li $v0, 1
	move $a0, $s4
	syscall 
	
	li $v0, 10
	syscall 
	
