function grafica_contorno()
  x=linspace(-3,3,40);
  y=linspace(-3,3,40);
  [X,Y]= meshgrid(x,y);
  Z= X.^2-X*Y+Y.^2-X;
  grid;
  contour(X,Y,Z);
  xlabel('x1');
  ylabel('x1');
  zlabel('f(x1,x2)');
  title('Diagrama Contorno');
 end