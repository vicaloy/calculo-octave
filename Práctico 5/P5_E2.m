
f=@(x) x^2
x0=6
alfa=0.3
grad=@(x) 2*x
tol=0.001
maxiter=100

[x,iter] = grad_desc_uni(alfa,f,grad,x0,tol,maxiter)
