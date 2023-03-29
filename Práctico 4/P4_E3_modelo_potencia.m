%Modelo pontencia forma y=a*x^b
x=[1.0000 1.5000 2.0000 3.2000 5.0000]
y=[4.7511 18.4011 5.4736 64.9299 238.4249]

[A,B]=regresion(log10(x),log10(y),length(x));
fprintf('exponente a= %2.3f\n',A(1));
fprintf('coeficiente b= %3.3f\n',10^B(1));

%gráfica
hold on
plot(x,y,'ro','markersize',4,'markerfacecolor','r')
z=@(x) (10^B(1))*x.^A(1);
fplot(z,[x(1),x(end)])
grid on
xlabel('x')
ylabel('y')
title('Regresión potencial')
hold off

