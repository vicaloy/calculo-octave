%{
x = [0 1 2 3 4 5];
y = [2.1 7.7 13.6 27.2 40.9 61.1]
ordenPolinomio=2;
ngauss=ordenPolinomio+1;
n=6
%}

function [A, b, res]=P4_E1_A_mmcc_orden_dos(x,y,n)
  sumX=sum(x);
  sumXCuadrado=sum(x.^2);
  sumXCubico=sum(x.^3);
  sumXCuatro=sum(x.^4);

  sumY=sum(y);
  sumXporY=sum((x.*y));
  sumXCuadradoPorY=sum((x.^2).*y);

  A=[n sumX sumXCuadrado; 
      sumX sumXCuadrado sumXCubico;
      sumXCuadrado sumXCubico sumXCuatro];
      
  b=[sumY;sumXporY;sumXCuadradoPorY];


  res=A\b;
  
endfunction