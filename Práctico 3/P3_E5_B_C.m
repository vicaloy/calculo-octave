
A=[8 3 1;-6 0 7; 2 4 -1];
ab=[12 1 5];
espA=max(abs(eig(A)));

B=[1 1 5; 1 4 -1; 3 1 -1];
bb=[7 4 3];
espB=max(abs(eig(B)));

C=[-1 3 5; -2 4 -5; 0 2 -1];
cb=[7 -3 1];
espC=max(abs(eig(C)));

D=[1 2 1; 1 -3 2; -4 1 6];
db=[2 1 1];
espD=max(abs(eig(D)));

fprintf('Radio espectral A= %10.2f\n', espA);
fprintf('Radio espectral B= %10.2f\n', espB);
fprintf('Radio espectral C= %10.2f\n', espC);
fprintf('Radio espectral D= %10.2f\n', espD);
fprintf('Numero de cond de A= %10.2f\n', cond(A));


%Si una matriz es diagonalmente dominante converge.
%Si no es diagonalmente dominante no se sabe si converge.
%Con el radio esoectral se puede saber si realmente converge,
%radio espectral p, si 0<p<1 converge, en caso contrario no converge.