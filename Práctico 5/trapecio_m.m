
%{
Hay n + 1 puntos igualmente espaciados 
En consecuencia, existen n segmentos del mismo ancho:
f = @(x) 0.2 + 25*x - 200*x^2 + 675*x^3 - 900*x^4 + 400*x^5
a=0
b=0.8
n=2

Tiene que dar 1.0688
%}

function I=trapecio_m(a,b,n,f)
  h = (b-a)/n ;
  s = feval(f,a) ;

  for i=1:n-1
      x(i) = a + i*h ;
      s = s+2 * feval (f,x(i)) ;
  end
  s = s + feval(f,b) ;
  I = s*h/2 ;

end
