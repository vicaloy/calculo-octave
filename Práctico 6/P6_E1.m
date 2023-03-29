
clear all
clc
f=@(x,y)(-x+y)/2; %Write your f(x,y) function, where dy/dx=f(x,y), x(x0)=y0.
x0=0 %input('\n Enter initial value of x i.e. x0: '); example x0=0
y0=0%input('\n Enter initial value of y i.e. y0: '); example y0=0.5
xn=3%input('\n Enter the final value of x: '); where we need to find the value of y 
                                            %example x=2
h=0.1%input('\n Enter the step length h: '); example h=0.2
 %Formula: y1=y0+h*fun(x0,y0);
 fprintf('\n x        y           err');
%x0<=xn || 
err=0.1;
iter=0;
while x0<=xn %err> 0.0000000001
    y1=y0+h*f(x0,y0);
    x1=x0+h;
    
    if(iter>0)
      err=abs((y1-y0)/y1);
    endif
    
    x0=x1;
    y0=y1; 
    iter=iter+1; 
    fprintf('\n%4.3f  %4.3f   %4.3f',x0,y0,err); %values of x and y
end

fprintf('\n\n ode45 ');
opt = odeset ("RelTol", 1e-5, "AbsTol", realmin);
[a, b] = ode45 (@(x,y)(-x+y)/2, [0, 3], h, opt)