%Práctico 1. Ejercicio 1) 1) sen(4x)
clc
disp('grafico de la funcion seno(x)')
a=2;
b=2*3.141592;
x=a:0.01:b;
y=sin(4*x);
plot(x,y)
grid
figure(1)
disp(sin(y))