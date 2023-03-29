

function sol=P3_E10_splines_linear_point(x, xx, ff, n)
 n=n-1
 for i=1:n
    ss(i)=ff(i)*((x-xx(i+1))/(xx(i)-xx(i+1))) + ff(i+1)*((x-xx(i))/(xx(i+1)-xx(i)));
 endfor
  sol=ss
end

%{
x=16;
n=5;
xx=[0 10 15 20 22.5];
ff=[0 227.04 362.78 517.35 602.97];
sol=P3_E10_splines_linear_point(x, xx, ff, n)

sol = 363.26   389.93   393.69   380.36

s0= 2838*x/125 para x [0, 10]
s1= 6787*x/250 -1111/25 para x [10, 15]
s2= 15457*x/500 -10093/100 para x [15, 20] en 16 ans =  393.69
s3= -10347*x/50+3*sqrt(40397)*(2*x/5 -8) + 93123/20 para x [20, 22.5]

%}
%Tiempo (s) Velocidad (m/s)
%0 0
%10 227.04
%15 362.78
%20 517.35
%22.5 602.97

