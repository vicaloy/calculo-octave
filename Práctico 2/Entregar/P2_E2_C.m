%raiz 1.1912
clc
clear
fp = @(x) log(x.^4) - 0.7;
  
xl = -1.2513;
xu = -1.1512;
tol= 10^-8;
maxiter=5;
iter=0;

yl = fp(xl);
yu = fp(xu);

if yl==0
fprintf('%g is a root\n', xl)
endif

if yu==0
fprintf('%g is a root\n',xu)
endif

if yl*yu>0
fprintf ('There are no roots in the interval\n')
endif	

if yl*yu<0
  xr=xu-((xu-xl)*yu/(yu-yl));
  yr=fp(xr);
  error=tol+1;
%error>tol	&& 
  while iter<maxiter
    if yr*yu<0
      xl=xr;
      yl=fp(xl);
    else
      xu=xr;
      yu=fp(xu);
    endif
    
    xr=xu-((xu-xl)*yu/(yu-yl));
    yr=fp(xr);
    error=abs(xu-xr);
    error
    
    iter=iter+1;
  endwhile
end

if yr==0
	fprintf('%g is a root of the function\n', xr)
else
	if error<tol
	  fprintf('%.10f is an aproxrmation to the root of the function \n with a tolerance of %10e\n', xr,tol);
	endif
  if iter==maxiter
    fprintf('%.10f is an aproxrmation to the root of the function \n with a iter of %10d\n', xr,iter);
  endif
endif

