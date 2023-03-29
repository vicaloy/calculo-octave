f=@(x)3/2*x(1)*x(1)+2*x(2)*x(2)-2*x(1)*x(2)-4*x(1)-8*x(2)
g=@(x)[3*x(1)-2*x(2)-4;-2*x(1)+4*x(2)-8]
tol=0.00001
maxiter=100
x0=[5;5]
alfa=0.1
[x,iter, fvalue] = grad_desc_multi(alfa,f,grad,x0,tol,maxiter)

x0=[4 4];
fprintf('\nResultado fminsearch\n')
[x fval] = fminsearch(f,x0)