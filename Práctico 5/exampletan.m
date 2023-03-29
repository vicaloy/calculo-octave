clc
disp('Metodo de Newton Raphson')

f=@(x)tan(cos(x))
%Introducimos la función,la derivada, el punto de inicio,así como
%porcentaje de error
%Introduzca la funcion df(x)
df=@(x) -sin(x)*sec(2)*(cos(x))
%Introduzca la derivada segunda
df2=@(x)sec(2)*sin(x)^2-sec(2)*cos(x)^2
%input('Introduzca el punto de inicio:');
pi=3;
%input('Porcentaje de error:');
err=0.0000000000001;

ea=100;
j=0;
while ea>err
 %Aproximamos la raiz con la fórmula correpondiente
 xi=pi-(df(pi)/df2(pi));
 %Calculamos el porcentaje de error
 ea=abs(((xi-pi)/xi)*100)
 pi=xi;
 j=j+1;
end

%Mostramos los resultados en pantalla (con 3 decimales)
fprintf('\nx= %10.3f f(x)= %10.3f en %d Iteraciones\n\n',pi,f(pi),j)


[x fval] = fminbnd(@(x)tan(cos(x)),3,8)