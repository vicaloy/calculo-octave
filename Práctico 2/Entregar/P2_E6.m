f=@(x) x.^3 - 3.*x + 1;
%raiz = -1.8794

x1=-2.0408;
xu=2.0408;
tol=10^(-14);
d=@(x) 3.*x.^2 -3;

[vectPasosBis, vectEaBis, raiz, fval, ea, iter] = P2_E6_biseccion(f,x1,xu,tol);
[vectPasosNew, vectEaNew] = P2_E6_newtonraphson(f,d,x1,tol);
[vectPasosRegla, vectEaRegla] = P2_E6_reglafalsa(f,x1,xu,tol);
[vectPasosSec, vectEaSec] = P2_E6_secante(f,x1,xu,tol);
hold on;
plot(vectPasosBis, vectEaBis, 'color','red');
plot(vectPasosNew, vectEaNew, 'color','green');
plot(vectPasosRegla, vectEaRegla, 'color','blue');
plot(vectPasosSec, vectEaSec);


fprintf('Evaluada: ')
f(-1.8794)