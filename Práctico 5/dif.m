pkg load symbolic
syms x
y = 2*sin(x)- (x^2)/10
diff(y, x)

df=2*cos(x) -x/5

diff(df, x)

df2=-2*sin(x) - 1/5
