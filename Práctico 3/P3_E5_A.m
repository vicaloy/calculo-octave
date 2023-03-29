%• Los Métodos Iterativos son más apropiados cuando:
%• El número de ecuaciones involucradas es grande
%(típicamente 100 o más)
%• Son de preferencia cuando la matriz de
%coeficientes es poco densa (dispersa)
%Los métodos iterativos que se aplicarán para resolver sistemas de
%ecuaciones lineales serán Jacobi y, tal vez, Gauss-Seidel
%• Para ambos es requisito que exista un sistema
%diagonalmente dominante. Es decir cada elemento de la
%diagonal de la matriz de coeficientes es mayor en
%magnitud que la suma de las magnitudes de los otros
%coeficientes en ese reglón

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



