.data
A: .word 2
B: .word 2
C: .word 2
D: .word 0
;; Escribir un programa que lea tres números enteros A, B y C de la memoria de datos y determine cuántos de ellos son iguales
;;entre sí (0, 2 o 3). El resultado debe quedar almacenado en la dirección de memoria D.

.code
main:
ld r1, A(r0)
ld r2, B(r0)
ld r3, C(r0)
ld r5, D(r0)

bne  r1,r2,uno
daddi r5,r5,1
uno: bne r1,r3,dos
daddi r5,r5,1
dos: bne r2,r3,fin
daddi r5,r5,1
fin: sd r5, D(r0)
halt