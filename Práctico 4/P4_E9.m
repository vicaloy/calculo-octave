clc;

func = @(x)  3*(x^2)*exp(x^3);
n = 10;

a = 0;
b = 1;

h = (b - a) / n;


fxi = zeros(1,n);
for i=0:(n-1)
  xi = a + (i + (1/2)) * h;
  fxi(1,i+1) = func(xi);
endfor

res = sum(fxi) * h
xt = quad(func, a, b)

err = abs((xt - res)/xt) * 100