%{ 
F=@(x) [0.5*x(1)^2+ 2.5*x(2)^2];
fx(1)'=x(1) --> fx(1)x(1)=1 
            -->fx(1)x(2)=0
fx(2)'= 5*x(2) --> fx(2)x(1)=0
               -->fx(2)x(2)=5
 H=@(x) [1,0;0,5];
 x0=[5;1]; %punto inicial
 grad = @(x) [x(1); 5*x(2)];
 [x,iter] = newtonm_optim(x0,grad,H)
 
 solucion [0 0]
%}

function [x,iter] = newtonm_optim(x0,grad,H)
  
  N=100; %define max. number of iterations
  epsilon=10^(-4); %define tolerance
  maxval=10000; %define value of divergence
  xx=x0; %load initial guess
  norma=0
  iter=0
  while(epsilon>norma)
    HH=feval(H,xx);
    
    xn=xx-inv(HH)*feval(grad,xx);
    
    norma=norm(abs(xn-xx),2)
    xx=xn;
    iter=iter+1
  endwhile
  x=xx;
endfunction
