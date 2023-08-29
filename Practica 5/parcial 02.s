.data
tabla: .word 1,2,3,4,5
dimf: .word 5
nueva: .word 0
.text
main:


lw $t2,dimf(r0)
dadd $t3,r0,r0
ld  $t2, dimf($0)

recorrerTabla:
lw $t4, tabla($t3)
daddi $t4,$t4,1
sw $t4,nueva($t3)
daddi $t3,$t3,8
daddi $t2, $t2, -1
bnez $t2, recorrerTabla

fin: halt