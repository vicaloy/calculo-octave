x=[7 1 10 5 4 3 13 10 2]
y=[2 9 2 5 7 11 2 5 14]

f1=@(x) -0.84253*(x) + 11.4821
hold on
plot(x,y,'ro','markersize',4,'markerfacecolor','r')
fplot(f1,[x(1),x(end)])
grid on
xlabel('x')
ylabel('y')
title('mmcc lineal')
hold off