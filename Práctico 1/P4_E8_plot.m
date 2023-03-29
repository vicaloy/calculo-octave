%Práctico 1. Ejercicio 1) 1) 2sen(x)
clc
disp('grafico ')
a=-10;
b=1000;
x=a:0.01:b;
%y= e.^(-sin(x)) + e.^(sin(x)) + 4*e.^(sin(x/2)) -1;
y= e.^(sin(x))
plot(x,y)
grid
figure(1)
disp(sin(y))