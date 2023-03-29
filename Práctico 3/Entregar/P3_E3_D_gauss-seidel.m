%Ejecutar

%{
n=3;
A=[4 -1 -1; -2 6 1; -1 1 1];
b=[3 9 -6];
m=500;
E=0.00001;
 resultados:   -0.999998  2.799998 -9.799997
[vectPasos, vectErr]=P3_E3_D_gseidel(A,b,E,m)
Diagonal debe ser distinto de 0 (evitar division por 0) y debe ser estrictamente diagonal dominante
%}

function [vectPasos, vectErr]=P3_E3_D_gseidel(A,b,tol,imax)
n=max(size(A));         % Obtenemos de la matriz A
                        % el número de ecuaiones
                        % y por ende de incognitas.

% se sespecifica el vector x(n,1) con valores iguales a cero
% para iniciar las iteraciones.
x=zeros(n,1);


err=tol+1;
iter=1;

% Se inician las iteraciones
while (tol<err)&&(iter<imax)
  fprintf('%d', iter);
  x_old=x;
      
  for i=1:n
      
      sigma=0;
      
      for j=1:i-1
              sigma=sigma+A(i,j)*x(j);
      end
      
      for j=i+1:n
              sigma=sigma+A(i,j)*x_old(j);
      end
      
      x(i)=(1/A(i,i))*(b(i)-sigma);
      fprintf('%10.6f', x(i));
    end

    err=norm(x-x_old, inf);
    fprintf('%10.6f\n', err);

    vectPasos(iter)=iter;
    vectErr(iter)=err;
    iter=iter+1;
end