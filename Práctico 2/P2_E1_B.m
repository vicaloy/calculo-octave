%Práctico 2. Ejercicio 1) a) Usando la fórmula de Bhaskara 
%Determinar las raíces reales de la función ?(?) = ?0.6?*? + 2.4 ? + 5.5
%x=5.62859
%((-b(+-)sqrt(-4ac+b*b))/2a
clc
disp('Corriendo..')

a=-0.6;
b=2.4;
c=5.5;

calculo = ((b*b) - (4*a*c));

if (calculo < 0)%resultado negativo     
  disp('La ecuación no tiene raíz real..');
else
  if (calculo > 0) %dos raices
    
    x1 =  (-b + sqrt(calculo));
    denominador = (2*a);
    calc1 = x1 / denominador;
    
    x2 =  (-b - sqrt(calculo));
    calc2 = x2 / (2*a);
    
    disp('2 raices..');
    calc1
    calc2
  else %una raíz
    
    x1 =  (-b + sqrt(calculo));
    denominador = (2*a);
    calc1 = x1 / denominador;

    disp('1 raiz..');
    calc1
  endif
endif

%y=(-0.6.*x.*x + 2.4.*x + 5.5)
