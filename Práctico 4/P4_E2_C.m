xx = [-4.5 -3.2 -1.4 0.8 2.5 4.1];
yy = [0.7 2.3 3.8 5.0 5.5 5.6];
ordenPolinomio=3;
ngauss=ordenPolinomio+1;
n=6

p =@(x) 4.67117083 + x*0.52860720 -x*x*0.07505487 + x*x*x*0.00033820

noY = 1/n * sum(yy)

ssTot=0
ssRes=0

for i=1:n
  ssTot= (noY - yy(i))^2 + ssTot
endfor

for i=1:n
  ssRes= (yy(i) - p(xx(i)))^2 + ssRes
endfor


R= 1 - ssRes/ssTot

%R =  0.99923, en la medida que R tiene a 1 es mejor el modelo, significa pequeños errores