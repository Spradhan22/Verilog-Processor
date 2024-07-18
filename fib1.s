.data
message: .asciiz "Enter a number: \n"
com: .asciiz ", "

.text
.globl main

fib: beqz $a0, zero   
     beq $a0, 1, one  

     addi $sp, $sp, -4  
     sw $31, 0($sp)

     addi $a0, $a0, -1  
     jal fib    
     addi $a0, $a0, 1

     lw $31, 0($sp)   
     addi $sp, $sp, 4

     addi $sp, $sp, -4  
     sw $v0, 0($sp)

     addi $sp, $sp, -4  
     sw $31, 0($sp)

     addi $a0, $a0, -2   
     jal fib    
     addi $a0, $a0, 2

     lw $31, 0($sp)   
     addi $sp, $sp, 4

     lw $s7, 0($sp)   
     addi $sp, $sp, 4

     add $v0, $v0, $s7
     jr $31 

zero: li $v0,0
      jr $31

one: li $v0,1
     jr $31

main: la $a0, message
      li $v0,4
      syscall

      li $v0, 5    
      syscall

      move $t2, $v0    
      blez $t2, end

     li $t3, 1

     move $a0, $t3
     move $v0, $t3
     jal fib         
     move $t4, $v0

     move $a0, $t4   
     li $v0, 1
     syscall

     addi $t3, $t3, 1 
     slt $t5, $t2, $t3
     bne $t5, $0, end

start: move $a0, $t3
       move $v0, $t3
       jal fib          
       move $t4, $v0    

       la $a0, com    
       li $v0, 4
       syscall

       move $a0, $t4    
       li $v0, 1
       syscall

       addi $t3, $t3, 1 
       slt $t5, $t2, $t3 
       beq $t5, $0, start

end: li $v0,10
     syscall


