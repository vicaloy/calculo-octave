% f=@(x) [(x(1)-4)^2+(x(2)-4)^2-5;x(1)^2+x(2)^2-16];
% J=@(x) [2*(x(1)-4),2*(x(2)-4);2*x(1),2*x(2)];
% x0=[1.8;3.56]; %punto inicial
% [x,iter] = P2_E12_B_newtonm(x0,f,J)

function [x,iter] = P2_E12_B_newtonm(x0,f,J)
  
  %Newton-Raphson method applied to a
  %system of linear equations f(x)=0
  %given the jacobian function J, with
  %J=del(f1,f2,...,fn)/del(x1,x2...,xn)
  %x=[x1;x2;...;xn], f=[f1;f2;...;fn]
  %x0 is an initial guess of the solution
  
  N=100; %define max. number of iterations
  epsilon=10^(-4); %define tolerance
  maxval=10000; %define value of divergence
  xx=x0; %load initial guess
  
  while(N>0)
    JJ=feval(J,xx);
    if(abs(det(JJ))<epsilon)
      error('newtom - Jacobian is singular - try new x0');
      abort;
    endif
    
    xn=xx-inv(JJ)*feval(f,xx);
    
    if(abs(feval(f,xn))<epsilon)
      x=xn;
      iter=100-N;
      return;
    endif
    
    if(abs(feval(f,xn))>maxval)
      iter=100-N;
      disp(['iterations=', num2str(iter)]);
      error('Solutions diverges');
      abort;
    endif
    
    N=N-1;
    xx=xn;
  endwhile
  
  error('No converges after 100 iterations');
  abort;
endfunction