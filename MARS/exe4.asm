#a = $s0
#b = $s1
#c = $s2
#d = $s3
#e = $s4
#f = $s5

#f= e- (a-b) + (b-c)

.text
	li $s0, 10
	li $s1, 5
	li $s2, 2
	li $s3, 3
	li $s4, 20
	li $s5, 50
	
	sub $t1, $s0, $s1
	sub $t2, $s1, $s2
	sub $t3, $s4, $t1
	add $s5, $t3, $t2

	
	li $v0, 1
	move $a0, $s5
	syscall 
	
	li $v0, 10
	syscall 
	
