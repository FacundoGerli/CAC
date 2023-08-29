.data
cadena: .asciiz "adbdcdedfdgdhdid" ; cadena a analizar
car: .asciiz "d" ; caracter buscado
cant: .word 0 ; cantidad de veces que se repite el caracter car en cadena
actual: .asciiz ? ; caracter actual
.text 
ld r1,cadena(r0)
halt