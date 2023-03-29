%Práctico 1. Ejercicio 1) 2)
clc
disp('graficar las 3 conjuntamente')
a=2;
b=2*3.141592;
hold on;
x=a:0.01:b;
plot(x, cos(2*x));
plot(x, sin(4*x));
y=sin(x);
y=2*y;
plot(x,y)
grid
hold off