%f=-12*y+4*x*x+4*y*y+4*x*y
%g1 = 8*x+4*y
%g2 = -12+8*y+4*x
%H=[8  4]
  %[4  8]
%a=0 termino independiente de la funcion original
%fmatricial(x)=a + x*(4*x + 2*y) + x*(8*x + 4*y) + y*(2*x + 4*y) + y*(4*x + 8*y - 12)


%FUNCION, EN DUDA TEORICO
%f=@(x)x*(4*x(1) + 2*x(2)) + x(1)*(8*x(1) + 4*x(2)) + x(2)*(2*x(1) + 4*x(2)) + x(2)*(4*x(1) + 8*x(2) - 12)
%grad=@(x)[24*x(1) + 12*x(2);12*x(1) + 24*x(2) - 12]
%H= [24 12;12 24]
%x0=[0;2]

f=@(x)-12*x(2)+4*x(1)*x(1)+4*x(2)*x(2)+4*x(1)*x(2)
grad=@(x)[8*x(1)+4*x(2);-12+8*x(2)+4*x(1)]
H=[8 4;4 8]
tol=0.00001
maxiter=50
x0=[0;2]
[m,fm]= grad_desc_multi_cuad(f,grad,H,x0,tol,maxiter)

%[x,iter, fvalue] = grad_desc_multi_armijo(f,grad,x0,tol,maxiter)