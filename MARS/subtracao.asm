.text

    li $t0, 20
    li $t1, 80
    
    sub $s0,$t0, $t1
    subi $s1, $t0, 50
    
    
    li $v0, 1 #instrução de impressao de integers
    move $a0, $s0 #move o val do registador s1 para a0
    syscall
    
    li $v0, 10
    syscall