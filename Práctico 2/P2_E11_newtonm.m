% F=@(x) [x(1)+e^x(2)-68.1;sin(x(1))+-x(2)+3.6];
% J=@(x) [1,e^x(2);cos(x(1)),-1];
% x=[2.5;4]; %punto inicial
% [x,iter] = P2_E11_newtonm(x,F,J)

%if(abs(norm((xx-xxant), 2))<epsilon)

function [x,iter] = P2_E11_newtonm(x0,f,J)
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
  xxant=xx.*2;
  while(N>0)
    JJ=feval(J,xx);
    if(abs(norm((xx-xxant), 2))<epsilon)
      error('newtom - Jacobian is singular - try new x0');
      abort;
    endif
    
    xxant=xx;
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
