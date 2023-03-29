%norm(T) = retorna el radio espectral de la matriz T.
%Es igual a la instrucción
%max(abs(eig(T)))
%donde eig devuelve los valores propios de la matriz T.

A=[0.52 -1; 1.02 -2];
b=[-9.5;18.8];

display('Radio espectral')
max(abs(eig(A)))

%Si la matriz es diagonalmente dominante converge, 
%si no es diagonalmente dominante no se sabe si converge.
%Con el radio espectral p, converge si 0<p<1, si no cumple esa cond. diverge
%

