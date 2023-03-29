f = @(x)100*(x(1)^2-x(2))^2+(x(1)-1)^2
grad=@(x)[400*x(1)*(x(1)^2-x(2))+2*x(1)-2;-200*x(1)+200*x(2)]
H=@(x) [1200*x(1)^2-400*x(2)+2,-400*x(1);-400*x(1),200]
x0=[-1;1]
%x0=[0.6;0.6]
tol=0.0001
maxiter=200
alfa=0.5

%[m,fm]= grad_desc_multi_cuad(f,grad,H,x0,tol,maxiter)

%[x,iter, fvalue] = grad_desc_multi(alfa,f,grad,x0,tol,maxiter)

%[x,iter, fvalue] = grad_desc_multi_armijo(f,grad,x0,tol,maxiter)

%[x,iter] = newtonm_optim(x0,grad,H)

x0=[-1 1];
fprintf('\nResultado fminsearch\n')
[x fval] = fminsearch(f,x0)
