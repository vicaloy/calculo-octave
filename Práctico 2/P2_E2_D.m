
x0=0;
fun = @(x) log(x.^4) - 0.7;
x = fzero(fun, x0);
x

%x = -1.1912

%P2_E2_B
%iter   x1     xr     xu
%ea% --------------------------------------
%  0 -1.2513 -1.2513 -1.1512 100.0000
%  1 -1.2012 -1.2012 -1.1512 4.1665
%  2 -1.2012 -1.1762 -1.1762 2.1276
%  3 -1.2012 -1.1887 -1.1887 1.0526
%  4 -1.1950 -1.1950 -1.1887 0.5235
%  5 -1.1919 -1.1919 -1.1887 0.2625
%No converge para el maximo de iteraciones 6
%raiz = -1.1903
%fval = -0.0031732
%iter =  0.13140

%P2_E2_C
%error =  0.040063
%error =  0.040047
%error =  0.040046
%error =  0.040046
%error =  0.040046
%-1.1912462166 is an aproxrmation to the root of the function
% with a iter of          5

%El método de regula falsi converge más rápido que el de bisección ya que se acerca más al resultado en base a 
%los mismos párametros.

