%Ejercicio 9
s=input('s=');%ingresar 2
x=input('x=');%ingresar 1
verdadero=sqrt(x);
est=0;
exac=0;
xant=0;
for(i=1:5)
  xant=x;
  x=(1/2)*(x+s/x);
  est=abs(xant-x)/abs(x);
  exac=abs(verdadero-x)/abs(verdadero);
  fprintf('x%3.0f = %3.10f Err rel est: %17.9e Err rel exac: %17.9e \n', i, x, est, exac);
endfor
