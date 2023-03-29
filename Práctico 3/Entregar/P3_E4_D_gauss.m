%{
A=[0.5 -1; 1.02 -2];
b=[-9.5;18.8];
n=2;
[A, b]=P3_E4_D_gauss(A,b,n)
%}


function [A, b]=P3_E4_D_gauss(A,b,n)
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

%Resultados
%x =
%
%   1890.00    954.50
%
%A =
%
%   0.50000  -1.00000
%   0.00000   0.04000
%
%b =
%
%   -9.5000
%   38.1800