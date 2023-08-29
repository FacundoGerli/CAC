;;Escribir un programa que recorra una TABLA de diez números enteros y determine cuántos elementos son mayores que X. El
;;resultado debe almacenarse en una dirección etiquetada CANT. El programa debe generar además otro arreglo llamado RES
;;cuyos elementos sean ceros y unos. Un ‘1’ indicará que el entero correspondiente en el arreglo TABLA es mayor que X,
;;mientras que un ‘0’ indicará que es menor o igual.
.data
tabla: .word 1,2,3,4,5
valor: .word 2
cant:  .word 0
res:   .word 0,0,0,0,0
.text
main: ld r1,tabla(r0)
ld r2, valor(r0)
ld r3,cant(r0)
ld r4, res(r0)
daddi r5,r0,r0
procesar: ld r6,tabla(r5)
slt r7,r2,r6  ;;< devuelve uno
bnez r7, esMayor
volver: daddi r5,r5,1
beq r5,r0,salir
j procesar 
salir:halt

esMayor: ld r8,cant(r0)
daddi r8,r8,1
move r9,r0
daddi r9,r9,1
sd r8,cant(r0)
sd r9,tabla(r5)
j volver
