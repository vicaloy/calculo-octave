%pkg load symbolic
%syms x
%f1 = e^(sin(-x));
%f2 = 4*e^(sin(x/2));
%f3 = e^(sin(x));
%h=x


%simp = (f1+f2+f3) 
%simp= (x/3) * simp

f=@(x) e^(-sin(x)) + e^(sin(x)) + 4*e^(sin(x/2)) -1;

