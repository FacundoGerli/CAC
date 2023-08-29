.data
IMC: .double 0.0
Estado: .double 0.0
altura: .double 2.50
peso: .double 62.5
infrapeso: .double 18.5
normal: .double 25.0
sobrepeso: .double 30.0

.text
main:
l.d f0,altura(r0)
l.d f3,infrapeso(r0)
l.d f1,peso(r0)
div.d f0,f1,f0
s.d f0,IMC(r0)

;;estado?
;;bc1t offN Salta a la dirección rotulada offN si flag FP=1 (ó true) (en punto flotante)
;;c.lt.d fd, ff Compara fd con ff, dejando flag FP=1 si fd es menor que ff (en punto flotante)
c.lt.d f0,f3 ;;comparo y si IMC<infrapeso salta
bc1t infra_p

l.d f3,normal(r0);;comparo y si IMC < Normal salta
c.lt.d f0,f3 
bc1t normal_p

l.d f3, sobrepeso(r0)
c.lt.d f0,f3
bc1t sobrepeso_p

daddi r1,r0,4
j salir

infra_p: daddi r1,r0,1
j salir
normal_p: daddi r1,r0,2
j salir
sobrepeso_p: daddi r1,r0,3
j salir

salir: sd r1,Estado(r0)
halt
