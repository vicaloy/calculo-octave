err=10^(-4);
f=@(x) x.^3 - 0.165.*x.^2 + 3.993*10^(-4);
d=@(x) 3.*x.^2 - 2*0.165.*x;
pi=1;
c=5;
fprintf('\n\n\nEjecutando newtonraphson..');
fprintf('\n Iter      Aprox raiz      Ea');
ea=err+1;
j=0;
%
while ea>err
 %Aproximamos la raiz con la fórmula correpondiente
 xi=pi-(f(pi)/d(pi));
 %Calculamos el porcentaje de error
 ea=abs((xi-pi)/xi);
 pi=xi;
 j=j+1;
 vectPasos(j)=j;
 vectEa(j)=ea;
 
 fprintf('\n %d      %10.5f      %10.5f', j, xi, ea);
 %(pi/(pi/10^c))
end

%Mostramos los resultados en pantalla (con 3 decimales)
fprintf('\nRaiz= %10.5f en %d Iteraciones',pi,j)

plot(vectPasos, vectEa);

fprintf('\nEvaluada de pi()\n')
f(pi)

fprintf('\nfzero()\n')
x0=fzero(f, 0)

fprintf('\nEvaluada de fzero()\n')
f(x0)

