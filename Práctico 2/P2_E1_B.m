%Pr�ctico 2. Ejercicio 1) a) Usando la f�rmula de Bhaskara 
%Determinar las ra�ces reales de la funci�n ?(?) = ?0.6?*? + 2.4 ? + 5.5
%x=5.62859
%((-b(+-)sqrt(-4ac+b*b))/2a
clc
disp('Corriendo..')

a=-0.6;
b=2.4;
c=5.5;

calculo = ((b*b) - (4*a*c));

if (calculo < 0)%resultado negativo     
  disp('La ecuaci�n no tiene ra�z real..');
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
  else %una ra�z
    
    x1 =  (-b + sqrt(calculo));
    denominador = (2*a);
    calc1 = x1 / denominador;

    disp('1 raiz..');
    calc1
  endif
endif

%y=(-0.6.*x.*x + 2.4.*x + 5.5)
