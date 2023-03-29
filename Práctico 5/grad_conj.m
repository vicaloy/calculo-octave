function [m,fm] = grad_conj(A,b,grad,f,x0,tol,maxiter)
k=0;
r0=b-A*x0;
p0=r0;
dk=-grad(x0);
xold=x0;
pold=p0;
rold=r0;
e=100;
while e>tol && norm(dk,2)>tol && k<=maxiter
    alfan=(rold'*rold)/(pold'*A*pold);
    xn=xold+alfan*pold;
    rk=b-A*xn;
    beta=(rk'*rk)/(rold'*rold);
    pk=rk+beta*pold;
    k=k+1;
    e=norm(xn-xold,2);
    dk=-grad(xn);
    xold= xn;
    rold=rk;
    pold=pk;
endwhile
m=xn;
fm=f(m);
endfunction

