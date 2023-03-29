pkg load symbolic
syms x y a

f=-12*y+4*x*x+4*y*y+4*x*y


g1 = 8*x+4*y
g2 = -12+8*y+4*x
H=hessian(f)

fc= a + [g1 g2]*[x;y]+ 1/2*[x y]*H*[x;y]


%a=0 termino independiente de la funcion original
%a + x*(4*x + 2*y) + x*(8*x + 4*y) + y*(2*x + 4*y) + y*(4*x + 8*y - 12)

p1=@(x)-12*x(2)+4*x(1)*x(1)+4*x(2)*x(2)+4*x(1)*x(2)
p2=@(x)x(1)*(4*x(1) + 2*x(2)) + x(1)*(8*x(1) + 4*x(2)) + x(2)*(2*x(1) + 4*x(2)) + x(2)*(4*x(1) + 8*x(2) - 12)

p1([1;5])
p2([1;5])

fn=x*(4*x + 2*y) + x*(8*x + 4*y) + y*(2*x + 4*y) + y*(4*x + 8*y - 12)
diff(fn,x)
diff(fn,y)
H=hessian(fn)


