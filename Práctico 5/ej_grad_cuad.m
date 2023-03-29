 f=@(x) 2+x(1)-x(2)+2*x(1)^2+2*x(1)*x(2)+x(2)^2;
 grad=@(x) [1+4*x(1)+2*x(2);-1+2*x(1)+2*x(2)];
 H=[4 2;2 2]
 x0=[-0.5;0.5]
 tol=0.0001
 maxiter=100
 [m,fm]= grad_desc_multi_cuad(f,grad,H,x0,tol,maxiter) 
 