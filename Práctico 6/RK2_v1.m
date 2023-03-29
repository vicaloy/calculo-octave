#ejercicio: dy/dt=-y + sin(t); y(0) = 1; h = 0,01
# f = funcion => f = @(x, y) -y .* sin(x);
# x0 = 0
# y0 = 1
# h = 0.01
# n = 100 (100 * h = y0  ==> n=yo/h)
#
#
#
function [y] = RK2_v1(f, x0, y0, h, n)
  x = zeros(1, n+1);
  y = zeros(1, n+1);
  x(1) = x0;
  y(1) = y0;
  
  fprintf('\n  x          y             k1            k2');
  for i = 1 : 1 : n
    k1 = feval(f, x(i), y(i));
    k2 = feval(f, x(i) + h, y(i) + k1*h);
    y(i+1) = y(i) + (h/2)*(k1+k2);
    x(i+1)=x(i)+h;
    fprintf('\n %4.5f    %4.5f    %4.5f    %4.5f',x(i),y(i),k1,k2);
  end
endfunction