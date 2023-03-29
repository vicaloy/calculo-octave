%Ejercicio 4
%%MacLaurin de exp(x) en a=0

function expmaclaurin(x, pasos)
  clc
  et=0; %%error verdadero
  er=0; %%error relativo
  aprox=0; %%valor aproximado
  ant=0; %%valor anterior
  verdadero=exp(x); %%valor verdadero
  
  fprintf('Valor verdadero: %2.5f \n\n', verdadero);
  
  for k=0:pasos-1
    ant=aprox;
    aprox=aprox+(x^k/factorial(k));
    et=(abs(verdadero-aprox)/verdadero)*100;
    er=(abs((aprox-ant)/aprox))*100;
    
    fprintf('Paso: %3.0f Aprox: %2.5f Error verdadero: %2.2f Error relativo: %2.2f  \n', k, aprox, et, er);
  endfor
endfunction

expmaclaurin(1, 10);
