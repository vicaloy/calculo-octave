%AITKEN
%f= x - (1/2)*e^(-x)
%-x= - (1/2)*e^(-x)
%x= (1/2)*e^(-x)
%g(x)=(1/2)*e^(-x)
%1) g(x) continúa en todos los reales
%2) g[-infinito, +infinito]->[-infinito, +infinito]
%3) g'(x)= -(1/2)*e^(-x), en g'(x) en (-infinito, +infinito) existe una constante positiva
% 0<k<1 tal que |g'(x)|<=k para todo x perteneciente (-infinito, +infinito)
% entonces el punto fijo en [-infinito, +infinito] es único
%
%
x0=1;
func=@(x)(1/2)*e^(-x)
xr=x0;
xr_old=0;
iter=0;
es=10^(-6);

fprintf('\n Iter      Xr        Ea');
do
  xr_old=xr;
  xr=func(xr_old);
  if xr>0 || xr<0
    ea=abs((xr-xr_old)/xr)*100;
  endif
  
  iter=iter+1;
  
  vectPasosPf(iter)=iter;
  vectXrPf(iter)=xr;
  vectEaPf(iter)=ea;

until !(ea>es)

iterptofijo=iter;
xr=x0;
xr_old=0;
iter=0;
es=10^(-6);
estres=0;

do
  xr_old=xr;
  xr=func(xr_old);
  
  estres=estres+1;
  
  if(iter==3)
    estres=0;
    iter
    xr = vectXrAi(iter) - (((vectXrAi(iter)-vectXrAi(iter-1))^2)/(vectXrAi(iter)-2*vectXrAi(iter-1)+vectXrAi(iter-2)))
  endif
  
  if((estres/3)==1 && iter>3)
    iter
    estres=0;
    xr = vectXrAi(iter) - (((vectXrAi(iter)-vectXrAi(iter-1))^2)/(vectXrAi(iter)-2*vectXrAi(iter-1)+vectXrAi(iter-2)))
  endif
  
  if xr>0 || xr<0
    ea=abs((xr-xr_old)/xr)*100;
  endif
  
  iter=iter+1;
  
  
  vectPasosAi(iter)=iter;
  vectXrAi(iter)=xr;
  vectEaAi(iter)=ea;
 

until !(ea>es)

fprintf('\n Iter      Punto fijo        Aitken            Ea PF     Ea Aitken');
for(i=1:1:iterptofijo)
  if(iterptofijo<i)
    vectPasosPf(i)=0;
    vectXrPf(i)=0;
    vectEaPf(i)=0;
  endif
  if(iter<i)
    vectPasosAi(i)=0;
    vectXrAi(i)=0;
    vectEaAi(i)=0;
  endif
  fprintf('\n %d        %10.8f      %10.8f      %10.8f      %10.8f', vectPasosPf(i), vectXrPf(i), vectXrAi(i), vectEaPf(i), vectEaAi(i));
endfor




