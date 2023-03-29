%Práctico 1. Ejercicio 1) 1) 2sen(x)
clc
disp('grafico de la funcion 2seno(x)')
a=2;
b=2*3.141592;
x=a:0.01:b;
y=sin(x);
y=2*y;
plot(x,y)
grid
figure(1)
disp(sin(y))