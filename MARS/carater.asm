.data
	caractere:.byte 'S'
.text

	li $v0, 4 #imprime strings em caracteres
	la $a0, caractere
	syscall 