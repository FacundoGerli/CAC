;;Escribir un programa que multiplique dos números enteros utilizando sumas repetidas (similar al Ejercicio 7 de la Práctica 1).
;;El programa debe estar optimizado para su ejecución con la opción Delay Slot habilitada
.data
A: .word 2
B: .word 4
resultado: .word ?
.text
main: ld r1,A(r0)
ld r2, B(r0)
multi: beqz r2,salir
    dadd r3,r3,r1
    daddi r2,r2,-1
j multi
salir: sd r3,resultado(r0)
halt