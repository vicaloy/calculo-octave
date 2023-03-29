clc;

x0 = 0;
xf = 2;
y0 = 1;
h = 0.1;
n = 2;
a2 = 0.75;
a1 = 1 - a2;

p1 = 1/(2*a2);
q11 = 1/(2*a2);

func = @(x, y)  2*(x - y) + 1;
funcSol = @(x) x + exp(-2*x);


x = zeros(1, n+1);
y = zeros(1, n+1);
x(1) = x0;
y(1) = y0;
err = zeros(1, n+1);
err(1) =  abs((funcSol(x0) - y0) / funcSol(x0)) * 100;

for i = 1 : 1 : n
  k1 = feval(func, x(i), y(i));
  k2 = feval(func, x(i) + p1*h, y(i) + q11*k1*h);
  y(i+1) = y(i) + (a1*k1 + a2*k2)*h;
  err(i+1) = abs((funcSol(i) - y(i+1)) / funcSol(i)) * 100;
end

hold on;
figure(1);
xVal = [x0:h:0.2]
plot(xVal, y, 'o')

figure(1);
plot(xVal, funcSol(xVal))

figure(2);
plot(xVal, err);