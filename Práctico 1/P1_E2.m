%Práctico 1. Ejercicio 2)
clc
disp('media cuadratica');
n=input('n= ');
sumatoria=0;
for i=1:n
  x=input('x=');
  xx=x^2;
  sumatoria=sumatoria+xx;  
endfor
sumatoria=sumatoria/n;
sqrt(sumatoria)
