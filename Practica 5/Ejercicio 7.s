;;Escriba una subrutina que reciba como parámetros un número positivo M de 64 bits, la dirección del comienzo de una
;;tabla que contenga valores numéricos de 64 bits sin signo y la cantidad de valores almacenados en dicha tabla.
;;La subrutina debe retornar la cantidad de valores mayores que M contenidos en la tabla

.data
tabla: .word 1,2,3,4,5,6
dimf: .word 6
mayor: .word 5

.text
main:
daddi $a0,$zero,tabla
ld $a1,mayor(r0)
ld $a2, dimf(r0)
jal procesarTabla
j fin

procesarTabla: dadd $v0,r0,r0 ;;inicializo el contador de mayores
dadd $t0,$a2,r0 ;; dimf
dadd $t1,$a0,r0 ;; direccion de tabla
dadd $t2,$a1,r0 ;; guardo en temporal 2 el valor de maximo

bucle: beqz $t0, salir
ld $t3,0($t1)
slt $t4, $t2, $t3
beqz $t4, saltar
daddi $v0,$v0,1
saltar: daddi $t1,$t1,1
daddi $t0,$t0,-1
j bucle

salir: jr $ra

fin:
halt