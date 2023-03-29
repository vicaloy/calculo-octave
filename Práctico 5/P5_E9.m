%Como grafico la matriz, son tres funciones
A=[2 -2 0;-2 5 1;0 1 5];
b=[20;10;-10];
tol=0.000000001;
fprintf('Resultado gradiente conjugado\n\n');
x = conjgrad(A,b,tol)

fprintf('Resultado x=A|b\n\n');
x=A\b