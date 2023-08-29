;;Escribir un programa que calcule la superficie de un triángulo rectángulo de base 5,85 cm y altura 13,47 cm.

.data
base: .double 5.85
altura: .double 13.47
area: .double 0.0
dos: .double 2.0
.text

main:
l.d f7,base(r0)
l.d f8, altura(r0)
l.d f2, dos(r0)
mul.d f8,f8,f7
div.d f8,f8,f2
nop
s.d f8, area(r0)
halt