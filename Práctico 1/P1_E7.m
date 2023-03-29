x=2
xiant=0;
xi=0;
errAbs=0;
errRel=0;
xiVect=[0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
xiant=1;
for i = 1:20
  
  
  xi=sqrt(3*xi +6 - (8/xiant)); %ecuacion despejada para hallar raiz
  xiant=xi;
  xiVect(i)=xi;
  if(i>1)
    errAbs=xi-xiant;
    errRel=((xi-xiant)/xi)*100;
  endif
  
  fprintf('i: %3.0f xi: %4.5f Error abs: %3.2f Error rel porcent: %3.2f  \n', i, xi, errAbs, errRel);
  x=x+1; 
  
endfor

ycord=xiVect.^3-3.*xiVect.^2-6.*xiVect+8; %ecuacion original, sin despejar x
plot(xiVect, ycord);

%se observa que en el gráfico el valor 4 se aprox. mucho a 0, por lo que es raiz
