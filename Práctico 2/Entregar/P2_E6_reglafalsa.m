function [vectPasos, vectEa] = P2_E6_reglafalsa(fp,xl,xu,tol)
  fprintf('\n\n\nRegla falsa..');
  fprintf('\n Iter      Aprox raiz      Ea');
  %fp = @(x) log(x.^4) - 0.7;
  %xl = -1;
  %xu = 6;
  %tol= 10^-4;
  %maxiter=5;
  iter=0;
  xrold=0;
  yl = fp(xl);
  yu = fp(xu);

  if yl==0
  fprintf('\n %g is a root\n', xl)
  endif

  if yu==0
  fprintf('\n %g is a root\n',xu)
  endif

  if yl*yu>0
  fprintf ('\n There are no roots in the interval\n')
  endif	

  if yl*yu<0
    xr=xu-((xu-xl)*yu/(yu-yl));
    yr=fp(xr);
    error=tol+1;
    xrold=xr;

    while error>tol
      if yr*yu<0
        xl=xr;
        yl=fp(xl);
      else
        xu=xr;
        yu=fp(xu);
      endif
      
      xr=xu-((xu-xl)*yu/(yu-yl));
      yr=fp(xr);
      error=abs((xr-xrold)/xr);
      xrold=xr;
      iter=iter+1;
      fprintf('\n %d      %10.3f      %10.3f', iter, xr, error);
      vectPasos(iter)=iter;
      vectEa(iter)=error;
    endwhile
  end

  if yr==0
    fprintf('\n %g is a root of the function\n', xr)
  else
    if error<tol
      fprintf('\n %.10f is an aproxrmation to the root of the function \n with a tolerance of %10e\n', xr,tol);
    endif
  endif

endfunction