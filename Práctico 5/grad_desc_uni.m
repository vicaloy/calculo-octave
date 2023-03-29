%{ 
f=@(x) x^3 - 2*x^2 + 2
x0=2
alfa=0.1
grad=@(x) 3*x^2 - 4*x
tol=0.01
maxiter=100
%}

function [x,iter] = grad_desc_uni(alfa,f,grad,x0,tol,maxiter)
  xx=x0;
  xant=x0+10;
  i=0
  while(i<maxiter && abs(xant-xx)>tol)
    xant=xx
    xx=xx-alfa*feval(grad, xx)
    i=i+1
  end
  
  x=xx
  iter=i
endfunction
