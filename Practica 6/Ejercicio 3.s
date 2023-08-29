;;Escriba un programa que realice la suma de dos números enteros (de un dígito cada uno) utilizando dos subrutinas: La
;;denominada ingreso del ejercicio anterior (ingreso por teclado de un dígito numérico) y otra denominada
;;resultado, que muestre en la salida estándar del simulador (ventana Terminal) el resultado numérico de la suma de
;;los dos números ingresados (ejercicio similar al ejercicio 7 de Práctica 2).
.data
CONTROL: .word32 0x10000
DATA: .word32 0x10008
.text
main:
lwu $s0, CONTROL($0)
lwu $s1, DATA($0)

jal leerCaracter
dadd $t0, $v0, $0
jal leerCaracter
dadd $t1, $v0, $0

dadd $t2,$t0,$t1
sb $t2,0($s1)
daddi $t0,$0,1
sb $t0, 0($s0)
halt

leerCaracter: daddi $t5,r0,8
sb $t5,0($s0)
lb $v0,0($s1)
jr $ra