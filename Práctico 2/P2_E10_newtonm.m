% F=@(x) [x(1)^2-x(2)^2+2*x(2);2*x(1)+x(2)^2-6];
% J=@(x) [2*x(1),-2*x(2)+2;2,2*x(2)];
% x=[-4.6;-3.8]; %punto inicial
% [x,iter] = newtonm(x,F,J)

function P2_E10_newtonm(x0,f,J, cons)
  %Newton-Raphson method applied to a
  %system of linear equations f(x)=0
  %given the jacobian function J, with
  %J=del(f1,f2,...,fn)/del(x1,x2...,xn)
  %x=[x1;x2;...;xn], f=[f1;f2;...;fn]
  %x0 is an initial guess of the solution
  fprintf('\n\n\nValor de c = %.10f ', cons);
  N=100; %define max. number of iterations
  epsilon=10^(-4); %define tolerance
  maxval=10000; %define value of divergence
  xx=x0; %load initial guess
  
  while(N>0)
    JJ=feval(J,xx);
    if(abs(det(JJ))<epsilon)
      fprintf('\nNewtom - Jacobian is singular - try new x0');
      return;
    endif
    
    xn=xx-inv(JJ)*feval(f,xx);
    
    if(abs(feval(f,xn))<epsilon)
    fprintf('\n ');
      x=xn
      iter=100-N;
      return;
    endif
    
    if(abs(feval(f,xn))>maxval)
      iter=100-N;
      fprintf('\nSolutions diverges\n');
      disp(['iterations=', num2str(iter)]);
      return;
    endif
    
    N=N-1;
    xx=xn;
  endwhile
  
  fprintf('\nNo converges after 100 iterations\n');
  return;
endfunction
