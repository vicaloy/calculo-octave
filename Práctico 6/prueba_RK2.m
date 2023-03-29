f=@(x,y) 1+y^2+x^3;
x0=1
y0=-4
h=0.01
%n=abs(y0/h)
n=3

[y] = RK2_v1(f, x0, y0, h, n);