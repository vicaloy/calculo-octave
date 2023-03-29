%f = @(x)100*(x(1)^2-x(2))^2+(x(1)-1)^2

x=linspace(-4,4,100);
y=linspace(-4,4,100);
[X,Y]= meshgrid(x,y);
Z= 100*(X^2-Y)^2+(X-1)^2; %%funcion a graficar
grid;
cs=mesh(X,Y,Z);
zmin= floor(min(Z));
zmax= cell(max(Z));
xlabel('x1');
ylabel('x1');
zlabel('f(x1,x2)');
title('Diagrama 3D');