f=@(x,y) x*sqrt(y)
x0=0
y0=1
h=0.5
%n=abs(y0/h)
n=4

[y] = RK4_v1(f, x0, y0, h, n);