%A=[1 -1 0 3; 2 1 -1 1; 3 -1 -1 2; -1 2 3 -1];
%b=[0;1;-3;4]
%n=4
%[A, b, res]=gauss(A,b,n)

%Se puede determinar la solucion final del sistema haciendo (siempre que sean lineales):
%x=A\b, b columna
%lo anterior viene de Ax=b

function [A, b, res]=gauss(A,b,n)
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
  
  res=x;

endfunction

