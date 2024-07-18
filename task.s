
        .data
msg: .asciiz "Enter n\n"
msg2: .asciiz "Enter n values: \n"
array1: .space 80
array2: .space 80
        .text
        .globl main

main: li $v0, 4
      la $a0, msg
      syscall
      li $v0,5
      syscall
      addi $a0,$v0,0
      addi $t0,$0,0
      addi $t1,$a0,0
      mtc1 $0,$f12
      li $v0, 4
      la $a0, msg2
      syscall
      la $t2 , array1
      la $t3 , array2
      addi $t2, $t2, 1
      addi $t3, $t3, 1
      addi $t4, $t2, 0
      
loop1:      beq $t0,$t1,label0
            li $v0,6
            syscall
            addi $t0,$t0,1
            s.s $f0, 0($t4)
            addi $t4 , $t4, 4
            j loop1

label0: li $v0, 4
        la $a0, msg2
        syscall
        addi $t4, $t3, 0
        li $t0, 0

loop2:  beq $t0,$t1,label2
        li $v0,6
        syscall
        addi $t0,$t0,1
        s.s $f0, 0($t4)
        addi $t4 , $t4, 4
	j loop2

label2: li $t4 , 0
        li $t0, 0

loop3:  beq $t0, $t1, label3
        l.s $f1, 0($t2)
        l.s $f2, 0($t3)
        mul.s $f1, $f1, $f2
        add.s $f12 , $f12, $f1
        addi $t0, $t0, 1
        addi $t2, $t2, 4
        addi $t3, $t3, 4
        j loop3

label3: li $v0, 2
        syscall
        jr $ra
