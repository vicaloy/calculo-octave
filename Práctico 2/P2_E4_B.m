%Newton-Raphson
%Limpiamos la pantalla y mostramos el nombre del método
clear
clc
disp('Metodo de Newton Raphson')

%Introducimos la función,la derivada, el punto de inicio,así como
%porcentaje de error
%Introduzca la funcion f(x)
f=@(x) x - 0.967*sin(x) - 3;
%Introduzca la derivada de la funcion dy/dx
d=@(x) 1 - 0.967*cos(x);
%Introduzca el punto de inicio
pi=3;
%Valor exacto
exacto=3.0696;
%Porcentaje de error;
%err=0.001;
ea=100;
maxiter=50;
j=0;
fprintf('\nAprox raiz    Iteraciones    Error relativo porcentual verdadero ')
while j<maxiter
 %Aproximamos la raiz con la fórmula correpondiente
 xi=pi-(f(pi)/d(pi));
 %Calculamos el porcentaje de error
 ea=abs(((exacto-pi)/exacto)*100);
 pi=xi;
 j=j+1;
 fprintf('\n %10.3f           %d                  %d', pi, j, ea)
end

%Mostramos los resultados en pantalla (con 3 decimales)
fprintf('\nRaiz= %10.3f en %d Iteraciones',pi,j)