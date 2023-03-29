clear
clc
disp('Metodo de Newton Raphson')

%Introducimos la función,la derivada, el punto de inicio,así como
%porcentaje de error
%Introduzca la funcion f(x)
f=@(x) e^(-sin(x)) + e^(sin(x)) + 4*e^(sin(x/2)) -1;

%Introduzca la derivada de la funcion dy/dx
d=@(x) 2*e^(sin(x/2)) * cos(x/2) + e^(sin(x))*cos(x) - e^(-sin(x)) *cos(x) ;
%input('Introduzca el punto de inicio:');
pi=1;
%input('Porcentaje de error:');
err=0.001;

ea=100;
j=0;
while ea>err
 %Aproximamos la raiz con la fórmula correpondiente
 xi=pi-(f(pi)/d(pi));
 %Calculamos el porcentaje de error
 ea=abs(((xi-pi)/xi)*100);
 pi=xi;
 j=j+1;
end

%Mostramos los resultados en pantalla (con 3 decimales)
fprintf('\nRaiz= %10.3f en %d Iteraciones',pi,j)