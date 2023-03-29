%Práctico 2. Ejercicio 1) a) Graficamente
%Determinar las raíces reales de la función ?(?) = ?0.6?* + 2.4 ? + 5.5
%x=5.62859
%x=-1.63
clc
disp('Corriendo..')
a=-40;
b=40;
x=a:0.01:b;
y=(-0.6.*x.*x + 2.4.*x + 5.5)
%y=cos(x)
plot(x,y)
grid
figure(1)
disp(sin(y))