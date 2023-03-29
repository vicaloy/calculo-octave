x=[0; -7; 5];
xa=[-0.2; -7.5; 5.4];

A=[1 2 3; 2 3 4; 3 4 6];
b=[1; -1; 2];

fprintf('\nnorm((x-xa), inf)= %10.9f  \nnorm((A*xa-b), inf)= %10.9f', norm((x-xa), inf),norm((A*xa-b), inf));
fprintf('\n\nnorm((x-xa), 2)= %10.9f  \nnorm((A*xa-b), 2)= %10.9f', norm((x-xa), 2),norm((A*xa-b), 2));