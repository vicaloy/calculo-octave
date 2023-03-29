f=@(x,y) (5*x^2-y)/(e^(x+y))
x0=0
y0=1
h=0.1
n=y0/h

[y] = RK4_v1(f, x0, y0, h, n)