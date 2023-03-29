
x=[0.228 0.266 0.268 0.345 0.351 0.543 0.667 0.942 0.959 0.991];
y=[0.239 0.196 0.218 0.173 0.188 0.090 0.057 0.022 0.026 0.019];
[A,B]=regresion(x,log(y));
fprintf('exponente a= %2.3f\n',A(1));
fprintf('coeficiente b = %3.3f\n',exp(B(1)));

hold on
plot(x,y,'ro','markersize',4,'markerfacecolor','r')
z=@(x) exp(B(1))*exp(x*A(1));
fplot(z,[x(1),x(end)])
xlabel('x')
ylabel('y')
grid on
title('Regresión exponencial')
hold off

fun = @(xx,x)xx(1)*exp(xx(2)*x);
%El punto de partida es muy importante
%Hay que instalar el paquete optim para que funcione lsqcurvefit
x0 = [0,5];
xz = lsqcurvefit(fun,x0,x,y)