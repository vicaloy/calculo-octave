%Ejercicio 3)
%Probar con: 
%z= 2.718281828 flz= 2.7182
%z= 3.141592653 flz= 3.1415
%z= 1.618033988 flz= 1.6180
%z= 0.927354238 flz= 0.9273
%z= 4.373527386 flz= 4.3735
clc
for i=1:5
  z=input('z=');
  flz=input('flz=');
  primerk=0;
  segundak=0;
  tercerk=0;
  while(((z-flz)/z)<(5*10^-primerk))
    primerk++;
  endwhile

  while(((z-flz)/z)<(0.5*10^-segundak))
    segundak++;
  endwhile

  while(((z-flz)/z)<(0.5*10^(2-tercerk)))
    tercerk++;
  endwhile
  
  
  zetas(i)=z;
  flzetas(i)=flz;
  primerkas(i)=primerk;
  segundakas(i)=segundak;
  tercerkas(i)=tercerk;
  
endfor

zetas
flzetas
primerkas
segundakas
tercerkas