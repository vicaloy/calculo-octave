
f=@(x) sin(x) + cos(1+x.^2) - 1;
x1=1;
xu=3;
tol=10^(-4);
iter=5;

[vectPasos1, vectEa1] = P2_E7_secante(f,x1,xu,iter);

xl=1.5;
xu=2.5;
[vectPasos2, vectEa2] = P2_E7_secante(f,x1,xu,iter);

xl=1.5;
xu=2.25;
[vectPasos3, vectEa3] = P2_E7_secante(f,x1,xu,iter);

hold on;
plot(vectPasos1, vectEa1, 'color','yellow');
plot(vectPasos2, vectEa2, 'color','red');
plot(vectPasos3, vectEa3, 'color','black');