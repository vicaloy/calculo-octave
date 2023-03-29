%{ 
f=@(x) 0.5*x(1)^2 - 2.5*x(2)^2
x0=[5;1]
alfa=1/3
grad=@(x)[x(1); 5*x(2)]
tol=0.01
maxiter=5

 f=@(x) 2+x(1)-x(2)+2*x(1)^2+2*x(1)*x(2)+x(2)^2;
 grad=@(x)[1+4*x(1)+2*x(2);-1+2*x(1)+2*x(2)]
 x0=[-0.5;0.5]
%}

function [x,iter, fvalue] = grad_desc_multi(alfa,f,grad,x0,tol,maxiter)
  xx=x0;
  xant=x0
  i=0
  yant=feval(f, xx)
  y=0
  while(i<maxiter && abs(yant-y)>tol)
    yant=feval(f, xx)
    xant=xx
    xx=feval(grad, xx)
    xx=alfa.*xx
    xx=xant-xx
    y=feval(f, xx)
    i=i+1
  end
  
  x=xx
  iter=i
  fvalue=feval(f, xx)

endfunction
