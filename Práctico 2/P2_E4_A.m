%Ver que se cumpla el teorema de punto fijo
%Fixed point
disp('Ejecutando...')

%Valor exacto
exacto=3.0696;
x0=3.000;
M=3;
c=0.967;
f= @(x) c*sin(x)+M;
xr=x0;
xr_old=0;
iter=0;
iter_max=50;

fprintf('\nAprox raiz    Iteraciones    Error relativo porcentual verdadero ')
do
  xr_old=xr;
  xr=f(xr_old);
  if xr>0 || xr<0
    ea=abs((exacto-xr)/exacto)*100;
  endif
  
  iter=iter+1;
  
  fprintf('\n %10.3f           %d                  %d', xr, iter, ea)

until !(iter<iter_max)

%Mostramos los resultados en pantalla (con 3 decimales)
fprintf('\nRaiz= %10.3f en %d Iteraciones',xr,iter);

disp('Función evaluada')
f=@(x)x-c*sin(x)-M
evaluada=f(xr)

 
