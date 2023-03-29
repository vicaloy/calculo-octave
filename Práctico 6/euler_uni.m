%{
where - f is the function entered as function handle
- a and b are the left and right endpoints
- ya is the initial condition E(a)
- M is the number of steps
- E=[T' Y'] where T is the vector of abscissas and Y is the vector of ordinates
Then run the code:
f=@(x) x^2;
a=0;
b=10;
ya=0;
M=200;
YY=euler_uni(f,a,b,ya,M)
%}

function E=euler_uni(f,a,b,ya,M)
h=(b-a)/M;
Y=zeros(1,M+1);
T=a:h:b;
Y(1)=ya;
for j=1:M
    Y(j+1)=Y(j)+h*f(T(j));
end
E=[T' Y'];
end




