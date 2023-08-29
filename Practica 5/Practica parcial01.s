.data
num1: .word 3
num2: .word 2
resultado: .word ?
.text

main:
lw $t0,num1($0)
lw $t1, num2($0)
dadd $t2,$0,$0

mul: beqz $t1,salir
dadd $t2,$t2,$t0
daddi $t1,$t1,-1
j mul 

salir: halt
