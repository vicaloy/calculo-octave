function grafica_3d()
  x=linspace(-1,5,40);
  y=linspace(-1,3,40);
  [X,Y]= meshgrid(x,y);
  Z= X.^2-X*Y+Y.^2-X; %%funcion a graficar
  grid;
  cs=mesh(X,Y,Z);
  zmin= floor(min(Z));
  zmax= cell(max(Z));
  xlabel('x1');
  ylabel('x1');
  zlabel('f(x1,x2)');
  title('Diagrama 3D');
end