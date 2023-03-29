pkg load symbolic
syms x y
f = x*x-4*x+y*y-y-y*x
df=diff(f, x)

df2=diff(f, y)

H=hessian(f)
