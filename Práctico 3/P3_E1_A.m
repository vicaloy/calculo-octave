x=[1/7; -1/6];
xa=[0.142; -0.166];

A=[1/2 1/3; 1/3 1/4];
b=[1/63; 1/168];

fprintf('\nnorm((x-xa), inf)= %10.9f  \nnorm((A*xa-b), inf)= %10.9f', norm((x-xa), inf),norm((A*xa-b), inf));
fprintf('\n\nnorm((x-xa), 2)= %10.9f  \nnorm((A*xa-b), 2)= %10.9f', norm((x-xa), 2),norm((A*xa-b), 2));