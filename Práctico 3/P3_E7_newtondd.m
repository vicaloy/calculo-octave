%Ejecutar
%{

x=[0.6 0.7 0.8 1 1.3 1.4];
y=[1.82212 2.01375 2.22554 2.718228 3.6693 4.0552];
n=6;
b=P3_E7_newtondd(x,y,n)

resultado b=    1.8221200   1.9163000   1.0080000   0.3595000   0.1097619   0.0011905

%}


%Polinomio resultado
%P5(x) = 1.82212 + 1.91630(x - x0) + 1.00800(x-x0)(x-x1) + 0.35950(x-x0)(x-x1)(x-x2)
%         + 0.1097619 (x-x0)(x-x1)(x-x2)(x-x3) +  0.0011905(x-x0)(x-x1)(x-x2)(x-x3)(x-x4)

%P5(x) = 1.82212 + 1.91630*(x - 0.6) + 1.00800*(x-0.6)*(x-0.7) + 0.35950*(x-0.6)*(x-0.7)*(x-0.8)
%         + 0.1097619*(x-0.6)*(x-0.7)*(x-0.8)*(x-1) +  0.0011905*(x-0.6)*(x-0.7)*(x-0.8)*(x-1)*(x-1.3) 

%en pto x=0.75
%P5(0.75) = 1.82212 + 1.91630*(x - 0.6) + 1.00800*(x-0.6)*(x-0.7) + 0.35950*(x-0.6)*(x-0.7)*(x-0.8)
%         + 0.1097619*(x-0.6)*(x-0.7)*(x-0.8)*(x-1) 
%         +  0.0011905*(x-0.6)*(x-0.7)*(x-0.8)*(x-1)*(x-1.3) = 2.1170

%en pto x=1.1
%P5(0.75) = 1.82212 + 1.91630*(x - 0.6) + 1.00800*(x-0.6)*(x-0.7) + 0.35950*(x-0.6)*(x-0.7)*(x-0.8)
%         + 0.1097619*(x-0.6)*(x-0.7)*(x-0.8)*(x-1) 
%         +  0.0011905*(x-0.6)*(x-0.7)*(x-0.8)*(x-1)*(x-1.3) = 3.0041


%Polinomio general
%Pn(x) = b0 + b1(x - x0) + ...+ bn(x-x0)(x-x1)...(x - xn-1)


%Resto de newton puntos no equiespaciados
%f(x)-Pn(x)=f'(n+1)(c)/(n+1)!(x-x0)(x-x1)...(x - xn-1)

%ezplot ("e^x", [0.6 1.4]);
%Mayor valor de la funcion: x=1.4
%f'''''''(1.4)=e^1.4= 4.0552
% 4.0552/6! *(x-0.6)*(x-0.7)*(x-0.8)*(x-1)*(x-1.3)*(x-1.4)

function b=P3_E7_newtondd(x,y,n)
for j=1:n
  f(j,1)=y(j); % Fill in y column of Newton triangle
end
for i=2:n % For column i,
  for j=1:n+1-i % fill in column from top to bottom
    f(j,i)=(f(j+1,i-1)-f(j,i-1))/(x(j+i-1)-x(j));
  end
end
for i=1:n
  b(i)=f(1,i); % Read along top of triangle
end % for output coefficients