%f=x-e*sin(x)-M
%-x=-e*sin(x)-M
%x=e*sin(x)+ M
%g(x)=e*sin(x)
%1) g(x) continúa en todos los reales
%2) g[-infinito, +infinito]->[-infinito, +infinito]
%3) g'(x)= e*cos(x), en g'(x) en (-infinito, +infinito) existe una constante positiva
% 0<k<1 tal que |g'(x)|<=k para todo x perteneciente (-infinito, +infinito)
% entonces el punto fijo en [-infinito, +infinito] es único
%
%
%
disp('Ejecutando...')
c=0.5;
M=1.2;
g= @(x) c*sin(x)+M;
es=0.0001;
iter_max=100;
ea=100;
  
xr=1.2;
xr_old=0;
iter=0;

do
  xr_old=xr;
  xr=g(xr_old);
  if xr>0 || xr<0
    ea=abs((xr-xr_old)/xr)*100;
  endif
  
  iter=iter+1;
  iter

until !(ea>es && iter<iter_max)

disp('Valores')
xr
xr_old

disp('Función evaluada')
f=@(x)x-c*sin(x)-M
evaluada=f(xr)
