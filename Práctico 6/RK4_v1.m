#ejercicio: dy/dt=-y + sin(t); y(0) = 1; h = 0,01
# f = funcion => f = @(x, y) -y .* sin(x);
# x0 = 0
# y0 = 1
# h = 0.01
# n = 100 (100 * h = y0  ==> n=yo/h)
# SALIDA:
# arreglo con las posiciones en cada posicion X
# ejemplo en el pdf ecuaciones diferenciales ejericio 3


function [y] = RK4_v1(f, x0, y0, h, n)
  x = zeros(1, n+1);
  y = zeros(1, n+1);
  x(1) = x0;
  y(1) = y0;
  
  k1 = 0;
  k2 = 0;
  k3 = 0;
  k4 = 0;
  
  fprintf('x               y       k1        x+h/2        k2        k3');
  for i = 1 : 1 : n
    k1 = feval(f, x(i), y(i));
    k2 = feval(f, x(i) + (1/2)*h, y(i) + (1/2)*k1*h);
    k3 = feval(f, x(i) + (1/2)*h, y(i) + (1/2)*k2*h);
    k4 = feval(f, x(i) + h, y(i) + k3*h);
    y(i+1) = y(i) + ((1/6)*(k1 + 2*k2 + 2*k3 + k4))*h;
    
    x(i+1)=x(i)+h;
    fprintf('\n %4.5f    %4.5f    %4.5f    %4.5f     %4.5f     %4.5f',x(i),y(i),k1,x(i)+(1/2)*h,k2,k3);
  end
  
endfunction