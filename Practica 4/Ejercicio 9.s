;;while a > 0 do
;;begin
;;x := x + y;
;;a := a - 1;
;;end;

.data
a: .word 2
x: .word 3
y: .word 4

.text
main: ld r1,a(r0)
ld r2,x(r0)
ld r3,y(r0)

bucle: beqz r1,salir
nop
daddi r1,r1,-1
dadd r2,r2,r3
j bucle
nop

salir: halt