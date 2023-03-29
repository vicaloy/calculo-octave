f=@(x)3/2*x(1)*x(1)+2*x(2)*x(2)-2*x(1)*x(2)-4*x(1)-8*x(2)
grad=@(x)[3*x(1)-2*x(2)-4;-2*x(1)+4*x(2)-8]
tol=0.0001
maxiter=100
x0=[3;3]
alfa=0.0001
[x,iter, fvalue] = grad_desc_multi_armijo(f,grad,x0,tol,maxiter)

x0=[3 3];
fprintf('\nResultado fminsearch\n')
[x fval] = fminsearch(f,x0)