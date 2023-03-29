function [vectPasos, vectEa] = P2_E7_secante(f,x0,x1,itermax)
  %f=@(x) sin(x) + cos(1 + x.^2) -1;
  %x0=1;
  %x1=3;
  xra=0;
  xr=0;
  %tol=0.01;
  i=1;
  error_aprox=1;
  error=0;
   
  fx1=f(x1);
  fx0=f(x0);
   
  xr=x1-((x1-x0)/(fx1-fx0))*fx1;
   
  fprintf('It.        X0              X1              Xr       Error aprox \n');
  fprintf('%2d \t %11.7f \t %11.7f \t %11.7f \t %11.7f \n',i,x0,x1,xr,error);
  
  itermax=itermax+1;
  
  while i<itermax
    xra=xr;
    x1=xr;
     
    fx1=f(x1);
    fx0=f(x0);
     
    xr=x1-((x1-x0)/(fx1-fx0))*fx1;
     
    error = abs((xr - xra) / xr);
    error_aprox = error;
    
    vectPasos(i)=i;
    vectEa(i)=error_aprox;
    
    i=i+1;
     
    fprintf('%2d \t %11.7f \t %11.7f \t %11.7f \t %11.7f \n',i,x0,x1,xr,error_aprox);
   
  end
endfunction