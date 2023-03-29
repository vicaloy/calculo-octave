clc;

x1 = [0 2 2.5 1 4 7];
x2 = [0 1 2 3 6 2];
y = [5 10 9 0 3 27];

n = length(x1);


x12 = x1.^2;
x22 = x2.^2;
x1x2 = x1.*x2;
x1y = x1.*y;
x2y = x2.*y;

r1 = [n sum(x1) sum(x2)];
r2 = [sum(x1) sum(x12) sum(x1x2)];
r3 = [sum(x2) sum(x1x2) sum(x22)];

A = [r1; r2; r3];
b = [sum(y); sum(x1y); sum(x2y)];

fprintf('     y           x1         x2         x1^2         x2^2         x1*x2         x1*y         x2*y \n');
disp([y' x1' x2' x12' x22' x1x2' x1y' x2y']);

res = A\b;
printf('\n\n');
fprintf('y = %2.5f + %2.5f * x1 + %2.5f * x2 \n', res(1), res(2), res(3));

%separador, fila que arranca, columna que arranca
x = dlmread('machine.data', ',', 0, 2);

col1 = x(:,1);
col2 = x(:,2);
col3 = x(:,3);
col4 = x(:,4);
col5 = x(:,5);
col6 = x(:,6);
col7 = x(:,7);
col8 = x(:,8);

reg = [col1 col2 col3 col4 col5 col6];
regress(col8, reg)