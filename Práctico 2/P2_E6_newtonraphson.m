function [vectPasos, vectEa] = P2_E6_newtonraphson(f,d,pi, err)
  fprintf('\n\n\nEjecutando newtonraphson..');
  fprintf('\n Iter      Aprox raiz      Ea');
  ea=err+1;
  j=0;
  while ea>err
   %Aproximamos la raiz con la fórmula correpondiente
   xi=pi-(f(pi)/d(pi));
   %Calculamos el porcentaje de error
   ea=abs((xi-pi)/xi);
   pi=xi;
   j=j+1;
   vectPasos(j)=j;
   vectEa(j)=ea;
   
   fprintf('\n %d      %10.3f      %10.3f', j, xi, ea);
  end

  %Mostramos los resultados en pantalla (con 3 decimales)
  fprintf('\nRaiz= %10.3f en %d Iteraciones',pi,j)
endfunction