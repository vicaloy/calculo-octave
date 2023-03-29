n=3
A=[4 -1 -1; -2 6 1; -1 1 1]
b1=[3 9 -6]
m=500
E=0.00001
b2=[3; 9 ;-6]
% resultados: 2 1 -1
%Diagonal debe ser distinto de 0 (evitar division por 0) y debe ser estrictamente diagonal dominante


[vectPasosJ, vectErrJ] = P3_E3_D_jacobi(n, A, b1, m, E);
[vectPasosG, vectErrG]=P3_E3_D_gseidel(A,b2,E,m);
hold on;
grid;
plot(vectPasosJ, vectErrJ, 'color','red');
plot(vectPasosG, vectErrG, 'color','green');