f=@(x) x^2;
a=0;
b=10;
ya=0;
M=200;
YY=euler_uni(f,a,b,ya,M)

fprintf('\n\n ode45 ');
opt = odeset ("RelTol", 1e-5, "AbsTol", realmin);
[a, b] = ode45 (f, [0, 3], h, opt)