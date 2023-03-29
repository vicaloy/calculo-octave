function grafica_3d()
  x=linspace(-2,0,40);
  y=linspace(-2,0,40);
  [X,Y]= meshgrid(x,y);
  Z= 2+X-Y+2*X*X+2*X*Y+Y*Y %%funcion a graficar
  grid;
  cs=mesh(X,Y,Z);
  zmin= floor(min(Z));
  zmax= cell(max(Z));
  xlabel('x1');
  ylabel('x1');
  zlabel('f(x1,x2)');
  title('Diagrama 3D');
end