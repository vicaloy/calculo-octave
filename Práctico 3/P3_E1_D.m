x=[1.827586; 0.6551724; 1.965517];
xa=[1.8; 0.64; 1.9];

A=[0.04 0.01 -0.01; 0.2 0.5 -0.2; 1 2 4];
b=[0.06; 0.3; 11];

fprintf('\nnorm((x-xa), inf)= %10.9f  \nnorm((A*xa-b), inf)= %10.9f', norm((x-xa), inf),norm((A*xa-b), inf));
fprintf('\n\nnorm((x-xa), 2)= %10.9f  \nnorm((A*xa-b), 2)= %10.9f', norm((x-xa), 2),norm((A*xa-b), 2));