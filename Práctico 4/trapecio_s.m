%Tiene que dar 0.1728
% existen n segmentos del mismo ancho:

n=1
f = @(x) 0.2 + 25*x - 200*x^2 + 675*x^3 - 900*x^4 + 400*x^5
x0=0
x1=0.8

h=(x1-x0)/n

trap = h * (f(x0)+f(x1))/2