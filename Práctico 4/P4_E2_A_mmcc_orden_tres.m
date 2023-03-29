%{
x = [-4.5 -3.2 -1.4 0.8 2.5 4.1];
y = [0.7 2.3 3.8 5.0 5.5 5.6];
ordenPolinomio=3;
ngauss=ordenPolinomio+1;
n=6
%}

function [A, b, res]=P4_E2_A_mmcc_orden_tres(x,y,n)
  sumX=sum(x)
  sumXCuadrado=sum(x.^2)
  sumXCubico=sum(x.^3)
  sumXCuatro=sum(x.^4)
  sumXCinco=sum(x.^5)
  sumXSeis=sum(x.^6)

  sumY=sum(y)
  sumXporY=sum((x.*y))
  sumXCuadradoPorY=sum((x.^2).*y)
  sumXCubicoPorY=sum((x.^3).*y)

  A=[n sumX sumXCuadrado sumXCubico; 
      sumX sumXCuadrado sumXCubico sumXCuadrado;
      sumXCuadrado sumXCubico sumXCuatro sumXCinco;
      sumXCubico sumXCuatro sumXCinco sumXSeis];
      
  b=[sumY;sumXporY;sumXCuadradoPorY;sumXCubicoPorY];

  res=A\b;
  
endfunction