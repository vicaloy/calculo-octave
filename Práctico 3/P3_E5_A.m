%� Los M�todos Iterativos son m�s apropiados cuando:
%� El n�mero de ecuaciones involucradas es grande
%(t�picamente 100 o m�s)
%� Son de preferencia cuando la matriz de
%coeficientes es poco densa (dispersa)
%Los m�todos iterativos que se aplicar�n para resolver sistemas de
%ecuaciones lineales ser�n Jacobi y, tal vez, Gauss-Seidel
%� Para ambos es requisito que exista un sistema
%diagonalmente dominante. Es decir cada elemento de la
%diagonal de la matriz de coeficientes es mayor en
%magnitud que la suma de las magnitudes de los otros
%coeficientes en ese regl�n

%Ninguno de los sistemas tal cual estan son diagonalmente dominantes.
%Ninguno de los sistemas se pueden resolver por un metodo iterativo.
%La matriz A tiene un 0 en la diagonal inclusive, no se puede.

n=3;
A=[8 3 1;-6 0 7; 2 4 -1];
ab=[12 1 5];
m=15;
E=0.000001;

B=[1 1 5; 1 4 -1; 3 1 -1];
bb=[7 4 3];

C=[-1 3 5; -2 4 -5; 0 2 -1];
cb=[7 -3 1];

[vectPasosA, vectErrA] =P3_E5_jacobi(n, A, ab, m, E)
[vectPasosB, vectErrB] =P3_E5_jacobi(n, B, bb, m, E)
[vectPasosC, vectErrC] =P3_E5_jacobi(n, C, cb, m, E)



