%{

x0=[0.6 0.7 0.8 1 1.3 1.4];
y0=[1.82212 2.01375 2.22554 2.718228 3.6693 4.0552];
n=6;

en pto x=0.75 =2.1170

en pto x=1.1 =3.0041

en pto x=0.9 = 2.4596
[sum] = P3_E9_lagrange(x, x0, y0, n)

%}


function [lagrng] = P3_E9_lagrange(x, x0, y0, n)

    % x0 - vector containing inputs (x values)
    % y0 - vector containing outputs (results for these x values
    % x - value you want to compute, for interpolation
    % y - computed value

    sum=0;
    
    for i=1:n
      product=y0(i);
      for j=1:n
        if i!=j 
          product=product*(x-x0(j))/(x0(i)-x0(j));
        endif
      endfor
      sum=sum+product;
    endfor
    lagrng=sum;
endfunction;