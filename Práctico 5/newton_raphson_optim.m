
clear
clc
disp('Metodo de Newton Raphson')

f=@(x) 0.5- x*e^(x^2)
%Introducimos la función,la derivada, el punto de inicio,así como
%porcentaje de error
%Introduzca la funcion df(x)
df=@(x) (2*x^2-1)*e^(-x^2);
%Introduzca la derivada segunda
df2=@(x) 2*x*(3-2*x^2)*e^(-x^2);
%input('Introduzca el punto de inicio:');
pi=1;
%input('Porcentaje de error:');
err=0.001;

ea=100;
j=0;
while ea>err
 %Aproximamos la raiz con la fórmula correpondiente
 xi=pi-(df(pi)/df2(pi));
 %Calculamos el porcentaje de error
 ea=abs(((xi-pi)/xi)*100);
 pi=xi;
 j=j+1;
end

%Mostramos los resultados en pantalla (con 3 decimales)
fprintf('\nRaiz= %10.3f en %d Iteraciones',pi,j)