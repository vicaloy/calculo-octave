
clear
clc
disp('Metodo de Newton Raphson')

f=@(x) 2.*sin(x) - (x.^2)/10
%Introducimos la función,la derivada, el punto de inicio,así como
%porcentaje de error
%Introduzca la funcion df(x)
df=@(x) 2.*cos(x) - (x/5);
%Introduzca la derivada segunda
df2=@(x) -2.*sin(x) - 1/5;
%input('Introduzca el punto de inicio:');
pi=2.5;
%input('Porcentaje de error:');
err=0.0001;

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
fprintf('\nResultado del algoritmo de Newton\nx= %10.3f \nf(x)= %10.3f \nen %d Iteraciones\n\n',pi,f(pi),j)

fminb=@(x) (-2.*sin(x)+ (x.^2)/10)
fprintf('\nResultado de fminbnd\n')
[x fval] = fminbnd(fminb,1,2.5)

fprintf('\nSe pone en negativo la funcion y se minimiza,\nel valor de la funcion obtenido se debera\nde poner en negativo para obtener el maximo\nsiendo (-1)*-1.7757')


%Maximizing Functions The fminbnd and fminsearch solvers attempt to minimize an objective function. If you have a maximization problem, that is, a problem of the form

%max x f(x), then define g(x) = –f(x), and minimize g.

%For example, to find the maximum of tan(cos(x)) near x = 5, evaluate:

%[x fval] = fminbnd(@(x)-tan(cos(x)),3,8)

%x = 6.2832

%fval =    -1.5574

%The maximum is 1.5574 (the negative of the reported fval), and occurs at x = 6.2832. This answer is correct since, to five digits, the maximum is tan(1) = 1.5574, which occurs at x = 2? = 6.2832.


