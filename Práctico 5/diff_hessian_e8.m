pkg load symbolic
syms x y
f = 100*(x*x-y)*(x*x-y)+(x-1)*(x-1)
g=gradient(f)

df1=diff(f, x)
df11=diff(df1, x)
df12=diff(df1, y)

df2=diff(f, y)
df21=diff(df2, x)
df22=diff(df2, y)

H=hessian(f)