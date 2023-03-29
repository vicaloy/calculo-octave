%{
n=3;
A=[4 -1 -1; -2 6 1; -1 1 1];
b=[3 9 -6];
m=500;
E=0.00001;

[vectPasos, vectErr]=P3_E3_D_jacobi(n,A,b,m,E)

resultados:  -0.999998  2.799998 -9.799997
Diagonal debe ser distinto de 0 (evitar division por 0) y debe ser estrictamente diagonal dominante


%}

%n=input('Numero de ecuaciones (n): ');
%A=input('Introducir la matriz A, matriz 2D: ');
%b=input('Introducir la matriz b, vector columna: ');
%m=input('Numero maximo de iters (m): ');
%E=input('Error permitido: ');

function [vectPasos, vectErr] = P3_E3_D_jacobi(n, A, b, m, E)
  x0=zeros(1, n);
  x=x0;
  k=0;
  norma=1;

  while norma>E
    k=k+1;
    fprintf('%d', k);
    for i=1:n
      suma=0;
      for j=1:n
        if i~=j
          suma=suma+A(i,j)*x0(j);
        endif
      endfor
      x(i)=(b(i)-suma)/A(i, i);
      fprintf('%10.6f', x(i));
    endfor
    norma=norm(x-x0, 2);
    x0=x;
    vectPasos(k)=k;
    vectErr(k)=norma;
    fprintf('%10.6f\n', norma);
    if k>=m
      break;  
    endif
  endwhile
endfunction
