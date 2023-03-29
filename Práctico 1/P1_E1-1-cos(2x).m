%Práctico 1. Ejercicio 1) 1) cos(2x)
clc
disp('grafico de la funcion coseno(2x)')
a=2;
b=2*3.141592;
x=a:0.01:b;
y=cos(2*x);
plot(x,y)
grid
figure(1)
disp(sin(y))