%f=@(x)3/2*x(1)*x(1)+2*x(2)*x(2)-2*x(1)*x(2)-4*x(1)-8*x(2)

x=linspace(-25,25,100);
y=linspace(-25,25,100);
[X,Y]= meshgrid(x,y);
Z= 3/2*X*X+2*Y*Y-2*X*Y-4*X-8*Y; %%funcion a graficar
grid;
contour(X,Y,Z);
xlabel('x1');
ylabel('x1');
zlabel('f(x1,x2)');
title('Diagrama Contorno');