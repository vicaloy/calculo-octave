%{ 
 f=@(x) 2+x(1)-x(2)+2*x(1)^2+2*x(1)*x(2)+x(2)^2;
 grad=@(x)[1+4*x(1)+2*x(2);-1+2*x(1)+2*x(2)]
 x0=[-0.5;0.5]
 tol=0.01
  maxiter=5
%}

function [x,iter, fvalue] = grad_desc_multi_armijo(f,grad,x0,tol,maxiter)
  xx=x0;
  xant=x0
  i=0
  yant=feval(f, xx)
  y=0
  while(i<maxiter)
    yant=feval(f, xx)
    xant=xx
    xx=feval(grad, xx)
    ro=0.5
    p=0.7
    d=grad(xx)
    d=d*-1
    alfa=1
   
    while (f(xx+alfa*d)>(f(xx)+ro*alfa*d'*grad(xx)))
        alfa=p*alfa
    end
    xx=alfa.*xx
    xx=xant-xx
    y=feval(f, xx)
    i=i+1
  end
  
  x=xx
  iter=i
  fvalue=feval(f, xx)
  
  %[x,fval]=fminsearch(f,[-0.5,0.5])

endfunction
