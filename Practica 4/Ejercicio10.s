;;Escribir un programa que cuente la cantidad de veces que un determinado caracter aparece en una cadena de texto. Observar
;;cómo se almacenan en memoria los códigos ASCII de los caracteres (código de la letra “a” es 61H). Utilizar la instrucción lbu
;;(load byte unsigned) para cargar códigos en registros. La inicialización de los datos es la siguiente:

.data
cadena: .asciiz "adbdcdedfdgdhdid" ; cadena a analizar
car: .asciiz "d" ; caracter buscado
cant: .word 0 ; cantidad de veces que se repite el caracter car en cadena
actual: .asciiz ? ; caracter actual
.text 
ld r1,cadena(r0)
lbu r2, car(r0)
dadd r3,r0,r0 ;Contador de iguales

ld r6,cadena(r0) ; longitud del arreglo
ld r7,car(r0)
dsub r5,r7,r6

procesarCadena: lbu r4, cadena(r6)
beq r4,r2,sumar
daddi r6,r6,1
daddi r5,r5,-1
bnez r5,procesarCadena
sd r3,cant(r0)
halt

sumar: daddi r3,r3,1






