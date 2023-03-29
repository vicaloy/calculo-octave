%Algoritmo de Biseccion
%ejecutar: f=@(x) -0.6*x*x+2.4*x+5.5
%ejecutar: [raiz, fval, ea, iter, et]=P2_E1_C(f, 5, 10, 10^-8, 6, 5.62859)
clc
disp('Ejecutando..')
function [raiz, fval, ea, iter, et] = P2_E1_C(f,x1,xu,tol,maxiter,raizreal)
  %inicializacion
  fprintf('%3s %4s %6s %6s %6s %6s \n', 'iter', 'x1', 'xr', 'xu', 'ea', 'et');
  fprintf('--------------------------------------\n');
  iter=0;
  xr=x1;
  ea=100;
  et=100;
  while(f(xr) !=0 && ea>tol && iter<=maxiter)
    fprintf('%3d %6.4f %6.4f %6.4f %6.4f %6.4f \n', iter, x1, xr, xu, ea, et);
    xrold=xr;
    xr=(x1+xu)/2;
    %elegir el siguiente intervalo [x1, xu] usando biseccion
    signo=f(x1)*f(xr);
    if signo<0
      %la raiz esta en la parte izquierda [x1, xr] de [x1,xu]
      xu=xr;
     elseif signo>0
      % raiz en la parte derecha [xr, xu] de [x1,xu]
      x1=xr;
    else
      ea=0;
    end
    ea=abs((xr-xrold)/xr)*100; %error relativo porcentual aprox.
    et=abs((raizreal-xr)/raizreal)*100;
    iter++;
  endwhile
  
  if iter>maxiter
    fprintf('No converge para el maximo de iteraciones %d \n', iter);
  endif
  raiz=xr;
  fval=f(xr);
endfunction
