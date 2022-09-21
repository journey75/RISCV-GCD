#Tripp Herlong, Lab 1
	.text
	.globl	main	

main:	
	addi    a7, x0, 5
        ecall
        addi    s1, a0, 0
        
        addi    a7, x0, 5
        ecall
        addi    s2, a0, 0	
	
wloop:	beq	s1, s2, exit
	blt     s1,s2,else
	bge     s2,s1,else
	sub     s1,s1,s2
	bne     s1,s2,wloop
	beq     s1,s2,exit
	
else:   sub     s2,s2,s1
        bne     s1,s2,wloop
        beq     s1,s2,exit
	# exit(0)
exit:	li	a7, 10
        add    a0, s2, zero
	li      a7, 1
	ecall
