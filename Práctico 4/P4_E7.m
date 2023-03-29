%da 1200 maso
x0=3
x1=11
x2=19
fx1=45.125
n=2 %2 segmentos
h=(x2-x0)/n %ancho

faMasfb=0

resultUnSeg=1860.9

%trap = (h) * (f(x0)+f(x1))
%resultUnSeg =faMasfb/h
%es h y no h/2 por la definicion de trapecio simple
%h en trapecio simple se calcula como (b-a)/1
%1 es porque es 1 solo segmento, en este caso hay 2 segmentos

faMasfb=resultUnSeg/h

I = ((x2-x0)/(2*n))*(faMasfb + 2*fx1) 
