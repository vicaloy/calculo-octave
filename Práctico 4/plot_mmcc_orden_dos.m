x = [0 1 2 3 4 5];
y = [2.1 7.7 13.6 27.2 40.9 61.1]
f1=@(x) 1.8607*(x^2) +  2.3593*(x) + 2.4786
hold on
plot(x,y,'ro','markersize',4,'markerfacecolor','r')
fplot(f1,[x(1),x(end)])
grid on
xlabel('x')
ylabel('y')
title('mmcc orden dos')
hold off