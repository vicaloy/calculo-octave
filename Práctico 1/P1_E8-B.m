%Ejercicio 8) b)
display('Ejercicio 8) b)');
s=100;
x1=50;
x2=10;
x3=-5;
vect1=[0 0 0 0 0 0 0 0 0 0];
vect2=[0 0 0 0 0 0 0 0 0 0];
vect3=[0 0 0 0 0 0 0 0 0 0];

for(i=1:10)
  x1=(1/2)*(x1+s/x1);
  vect1(i)=x1;
endfor

for(i=1:10)
  x2=(1/2)*(x2+s/x2);
  vect2(i)=x2;
endfor

for(i=1:10)
  x3=(1/2)*(x3+s/x3);
  vect3(i)=x3;
endfor

xcord=1:1:10;
hold on;
plot(xcord, vect1);
plot(xcord, vect2);
plot(xcord, vect3);
grid;
hold off;
