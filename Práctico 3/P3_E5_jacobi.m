function [vectPasos, vectErr] = P3_E5_jacobi(n, A, b, m, E)
  x0=zeros(1, n);
  x=x0;
  k=0;
  norma=1;

  while norma>E && k<m
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
      fprintf('%10.2f', x(i));
    endfor
    norma=norm(x-x0, 2);
    x0=x;
    vectPasos(k)=k;
    vectErr(k)=norma;
    fprintf('%10.2f\n', norma);
  endwhile
endfunction