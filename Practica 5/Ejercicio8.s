;;Escriba una subrutina que reciba como parámetros las direcciones del comienzo de dos cadenas terminadas en cero y
;;retorne la posición en la que las dos cadenas difieren. En caso de que las dos cadenas sean idénticas, debe retornar -1.
.data
cadena1: .asciiz "ABCDEFGH"
cadena2: .asciiz  "ABCDEFGH"
valor: .word ?
.text
main:
daddi $a0,r0,cadena1
daddi $a1,r0,cadena2
jal procesarCadenas
sd $v0,valor(r0)
halt

procesarCadenas: dadd $t0,r0,$a0 ;;guardo cadena1 en t0
dadd $t1,r0,$a1 ;; guardo cadena2 en t1
dadd $v0,r0,r0
dsub $t2,$t1,$t0
dadd $t3,r0,r0

bucle: beq $t3,$t2,salir
lbu $t4,0($t0)
lbu $t5,0($t1)
bne $t4,$t5,no_igual
daddi $v0,$v0,1
daddi $t3,$t3,1
daddi $t0,$t0,1
daddi $t1,$t1,1
j bucle

no_igual: daddi $v0,r0,-1
j salir

salir: 
jr $ra

