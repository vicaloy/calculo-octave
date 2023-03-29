%gráfica

x = [-4.5 -3.2 -1.4 0.8 2.5 4.1];
y = [0.7 2.3 3.8 5.0 5.5 5.6];
ordenPolinomio=3;
ngauss=ordenPolinomio+1;
n=6

[A, b, res]=P4_E2_A_mmcc_orden_tres(x,y,n)

hold on
plot(x,y,'ro','markersize',4,'markerfacecolor','r')
res=res'
ezplot(@(x) res(1) + res(2).*x + res(3).*x.*x + res(4).*x.*x.*x );
grid on
xlabel('x')
ylabel('y')
title('Regresión potencial')
hold off