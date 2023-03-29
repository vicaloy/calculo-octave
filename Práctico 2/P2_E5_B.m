%Punto fijo
disp('Ejecutando...')
g= @(x) (3*x+20)^(1/3)
es=10^-2;
ea=100;
  
xr=1;
xr_old=0;
sigo=1;
iter=0;

fprintf('\nAprox raiz    Iteraciones    Error relativo porcentual aprox ')
do
  xr_old=xr;
  xr=g(xr_old);
  if xr>0 || xr<0
    ea=abs((xr-xr_old)/xr)*100;
    sigo=1;
  else
    sigo=0;
  endif
  iter=iter+1;
  fprintf('\n %10.3f           %d                  %d', xr, iter, ea)
until !(ea>es && sigo==1)

disp('Valores')
xr
xr_old

disp('Función evaluada')
f=@(x)x^3-3*x-20
evaluada=f(xr)