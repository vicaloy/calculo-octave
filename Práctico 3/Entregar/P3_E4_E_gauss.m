%{

A=[0.52 -1; 1.02 -2];
b=[-9.5;18.8];
n=2;
[A, b]=P3_E4_E_gauss(A,b,n)

%}


function [A, b]=P3_E4_E_gauss(A,b,n)
  %n=lenght(b);
  for j=1:n-1;
    for k=j+1:n;
      al=-A(k,j)/A(j,j);
      
      for m=j:n;
        A(k,m)=A(k,m)+al*A(j,m);
      endfor
      b(k)=b(k)+al*b(j);
    endfor
  endfor
  
  
  %
  %    back substitution
  %
  x(n) = b(n) / A(n, n);
  for i = n - 1 : -1 : 1
      x(i) = ( b(i) - sum ( x(i+1:n) .* A(i, i+1:n) ) ) / A(i,i);
  end;
  
  x

endfunction

%Resultado
%x =
%
%  -1890.00   -973.30

%A =

%   0.52000  -1.00000
%   0.00000  -0.03846

%b =

%   -9.5000
%   37.4346

%Los valores resultantes cambiaron mucho con un pequeño cambio
%en los coeficientes. El sistema esta mal condicionado