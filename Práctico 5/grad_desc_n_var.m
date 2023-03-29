#Entradas:
# alfa = el valor del paso: ej 0.1
# f = función que se quiere calcular el maximo: ej f = @(x,y) x.^2 + x.*y + 3*y.^2;
# x0 = vector COLUMNA con los valores iniciales: ej [3 ; 3]

#======================ATENCION================================
# Hay que modificar la funcion de gradiente abajo de todo.
# El gradiente para la ecuación f anterior sería:
# | 2x + y |
# | x + 6y |
# entonces lo escribo: ( x(1) representa x ; x(2) representa y  )
# function g = grad(x)
#    g = [  2*x(1)  + x(2)
#           x(1)    + 6*x(2)];

#======================ATENCION================================
# Si se usa una función de mas de 2 variables hay que cambiar la línea donde se declara
# declara f2 (línea 46).

#Ejemplo:
# f = @(x,y) x.^2 + x.*y + 3*y.^2;
# alfa = 0.1;
# x0 = [3;3];
# tol = 1e-6;
# maxiter = 1000;
# function g = grad(x)
#    g = [  2*x(1)  + x(2)
#           x(1)    + 6*x(2)];

#Salidas:
# xopt = el vector con los valores optimizados
# fopt = es el valor de f evaluado en xopt.
# err = el error en el último paso.
 
function [xopt, fopt, err, pasos] = grad_desc_n_var(alfa, f, x0, tol, maxiter)
if (nargin < 3)
   error('No hay parametros suficientes para ejecutar la función.');
end

err = [inf]; 
xi = x0; 
pasos = 1;
xi1 = 0;

# CAMBIAR ESTA LÍNEA SI SE USAN MAS DE 2 VARIABLES.
f2 = @(x) f(xi(1), xi(2));


while and((err(pasos)>=tol) && (pasos <= maxiter))
    g = grad(xi);
    xi1 = xi - alfa*g;
    err = [err norm(xi1-xi)];
    pasos = pasos + 1;
    xi = xi1;
end
xopt = xi
fopt = f2(xopt);
pasos = pasos - 1;
pasos


% Función de gradiente.
function g = grad(x)
g = [ 2*x(1) + x(2)
    x(1) + 6*x(2)];