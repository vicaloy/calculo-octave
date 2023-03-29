%Ejercicio 5)

%%MacLaurin de exp(x) en a=0
disp("Ejercicio 5...")
function expmaclaurin(x)
  clc
  et=100; %%error verdadero
  er=0; %%error relativo
  aprox=0; %%valor aproximado
  ant=0; %%valor anterior
  verdadero=exp(x); %%valor verdadero
  k=0;
  i=1;
  fprintf('Valor verdadero: %2.5f \n\n', verdadero);
  
  while (et>10^-2)
    ant=aprox;
    aprox=aprox+(x^k/factorial(k));
    et=(abs(verdadero-aprox)/verdadero)*100;
    er=(abs((aprox-ant)/aprox))*100;
    vectorEt(i)=et;
    vectorPasos(i)=i;
    fprintf('Paso: %3.0f Aprox: %2.5f Error verdadero: %2.2f Error relativo: %2.2f  \n', 
    k, aprox, et, er);
  
    i=i+1;
    k=k+1;
  endwhile
  
  plot(vectorPasos, vectorEt);
  
endfunction

expmaclaurin(1);
