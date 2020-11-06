#a = $s0
#b = $s1
#c = $s2
#d = $s3
#e = $s4
#f = $s5

#f= (a + b) - d 

.text
	li $s0, 10
	li $s1, 5
	li $s2, 2
	li $s3, 3
	li $s4, 20
	li $s5, 50
	
	add $t1, $s0, $s1
	sub $s4, $t1, $s3
	
	li $v0, 1
	move $a0, $s4
	syscall 
	
	li $v0, 10
	syscall 
	
