pkg load symbolic
syms y(t)
ode = diff(y,t) == t*y
ode(t) = diff(y(t), t) == t*y(t)

ySol(t) = dsolve(ode)