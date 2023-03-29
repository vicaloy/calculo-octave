g1 = @(x) 2*x(1) - x(2) - 4;
g2 = @(x) -x(1) + 2*x(2) - 1;
grad=@(x)[2*x(1)-x(2)-4;-x(1)+2*x(2)-1]
H=@(x) [2,-1;-1,2]
x0=[1;2]
fprintf('\nResultado algoritmo newton\n')
[x,iter] = newtonm_optim(x0,grad,H);
f=@(x)x(1)*x(1)-4*x(1)+x(2)*x(2)-x(2)-x(1)*x(2);
f(x)

x0=[1 2];
fprintf('\nResultado fminsearch\n')
[x fval] = fminsearch(f,x0)