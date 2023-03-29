%Ejercicio 6
i = 0;
j = 1;
n=input('n=');
	
for (k = 1:n)
	t = i + j;
	i = j;
	j = t;
endfor

j%valor de fibonacci

i = 0;
j = 1;
k=0;
while(k<n)
  t = i + j;
	i = j;
	j = t;
  k=k+1;
endwhile

j%valor de fibonacci

i = 0;
j = 1;
k=0;
do
  t = i + j;
	i = j;
	j = t;
  k=k+1;
until(!(k<n))

j%valor de fibonacci