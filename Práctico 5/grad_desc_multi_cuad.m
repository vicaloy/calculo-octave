function [m,fm]= grad_desc_multi_cuad(f,grad,H,x0,tol,maxiter)
k=0;

xold=x0;
%H=H(x0) %si el hessiano tiene variables descomentar esta linea
e=100;
xn=x0
  while e>tol && k<=maxiter
    
      %alfan=(dk'*dk)/(dk'*H*dk);
      dk=-grad(xold);
      alfan = dk'*dk
      div = dk'*H*dk
      alfan=alfan/div
      
      xn=xold+alfan*dk;
      k=k+1;
      e=norm(xn-xold,2);
      xold=xn;
      
      %H=H(xold)
  endwhile
m=xn;
fm=f(m);

  %[x,fval]=fminsearch(f,[-0.5,0.5])
  %x =
  %-1.0000   1.5000
  %fval =  0.75000
endfunction
