%Ec. can�nicas de las cu�dricas A*x^2+B*y^2+C*z^2+D*x+E*y+F*z+G
%ecua=input('Ecuaci�n General: ');
clc;
syms x y z x1 y1 z1 ;
Coef=input('Coeficientes de la EG:[A B C D E F G]= '); 
A=Coef(1), B=Coef(2), C=Coef(3),D=Coef(4),E=Coef(5),F=Coef(6),G=Coef(7)
%Traslaci�n hacia el origen:x=x1+h, y=y1+k,z=z1+m.
%Sustituir en la ec. gral.: x1+h, y=y1+k,z=z1+m y encontrar
%h,k,m de tal manera que se hagan cero los terminos de 1er. grado.
%ecua=A*(x+h)^2+B*(y+k)^2+C*(z+m)^2+D*x+E*y+F*z+G
%A*h+D=0, 2*B*k+E=0, 2*C*m+F=0, s=A*h^2+B*k^2+C*m^2+G.
%C�nica trasladada:A*x1^2+B*y1^2+C*z1^2+s=0. CV:.conj. vac�o.
if A~=0, h=-1/2/A*D, else, h=0,end
if B~=0, k=-1/2/B*E, else, k=0,end
if C~=0, m=-1/2/C*F, else, m=0,end
s=A*h^2+B*k^2+C*m^2+D*h+E*k+F*m+G
%ecuatras=A/s*x1^2+B/s*y1^2+C/s*z1^2+D/s*x1+E/s*y1+F/s*z1+sign(s)
P=A*B*C;
%Casos donde todos los coeficientes son positivos
if P>0
    ecuatras=A/s*x1^2+B/s*y1^2+C/s*z1^2+sign(s)
    if B>0 & s<0
        disp('La EG representa un elipsoide o esfera')
    elseif B>0 & s==0
        disp('La EG representa un punto')
    elseif B>0 & s>0
        disp('La EG representa CV')
    elseif B<0 & s>0
        disp('La EG representa hiperboloide de una hoja')
    elseif B<0 & s==0
        disp('La EG representa un cono')
    elseif B<0 & s<0 
       disp('La EG representa hiperboloide de dos hojas')
    end
%Casos donde algunos coeficientes son negativos
elseif P<0 
    ecuatras=A/s*x1^2+B/s*y1^2+C/s*z1^2+sign(s)
  if     B>0 & s<0
     disp('La EG representa hiperboloide de una hoja')
  elseif B>0 & s>0
     disp('La EG representa un hiperboloide de dos hojas')
  elseif B<0 & s<0
     disp('La EG representa hiperboloide de una hoja')
  elseif B<0 & s>0  
     disp('La EG representa un hiperboloide de dos hojas') 
  elseif C>0 & s<0
      disp('La EG representa hiperboloide de una hoja')
  elseif C>0 & s>0  
      disp('La EG representa un hiperboloide de dos hojas')
  elseif C<0 & s<0
      disp('La EG representa hiperboloide de una hoja')
  elseif C<0 & s>0  
      disp('La EG representa un hiperboloide de dos hojas')
  elseif B*C<0 & s==0
      disp('La EG representa un cono')   
  end
       

%Casos donde A=0 o B=0 o C=0
else 
    if A==0 & B==0 & C==0
       disp('La EG representa el CV') 
    elseif A*B>0 & C==0
        if F==0 & G==0  
           disp('La EG representa un punto') 
         elseif F==0 & G>0
           disp('La EG representa un cilindro hiperb�lico')  
         elseif F==0 & G<0
           disp('La EG representa CV')
         elseif F~=0 
           disp('La EG representa un parabolide el�ptico')  
         end
    elseif A*B<0 & C==0
         if F==0 & G==0 
           disp('La EG representa dos planos que se cortan') 
         elseif F==0 & G~=0
           disp('La EG representa un cilindro hiperb�lico')  
         elseif F~=0 
           disp('La EG representa un parabolide hiperb�lico')  
         end
    elseif A*C>0 & B==0
         if E==0 & G==0
           disp('La EG representa un punto') 
         elseif E==0 & G>0
           disp('La EG representa un cilindro hiperb�lico')  
         elseif E==0 & G<0
           disp('La EG representa CV')
         elseif E~=0 
           disp('La EG representa un parabolide el�ptico')  
         end
    elseif A*C<0 & B==0
         if E==0 & G==0
           disp('La EG representa dos planos que se cortan') 
         elseif E==0 & G~=0
           disp('La EG representa un cilindro hiperb�lico')  
         elseif E~=0 
           disp('La EG representa un parabolide hiperb�lico')  
         end
    elseif B*C>0 & A==0 
        if D==0 & G==0
           disp('La EG representa un punto') 
        elseif D==0 & G>0
           disp('La EG representa un cilindro hiperb�lico')  
        elseif D==0 & G<0
           disp('La EG representa CV')
        elseif D~=0 
           disp('La EG representa un parabolide el�ptico')  
        end
        elseif B*C<0 & A==0
           if D==0 & G==0
           disp('La EG representa dos planos que se cortan') 
           elseif D==0 & G~=0
           disp('La EG representa un cilindro hiperb�lico')  
           elseif D~=0 
           disp('La EG representa un parabolide hiperb�lico')  
           end
       elseif A~=0 & B==0 & C==0 
       if E*F~=0
            disp('La EG representa un cilindro parab�lico rotado')
        elseif (F~=0 & E==0) | (E==0 & F~=0)
            disp('La EG representa un cilindro parab�lico') 
            D=0;
       elseif F==0 & E==0 & s/A<0  
            disp('La EG representa dos planos')
        elseif D==0 & E==0 & s/A>0  
            disp('La EG representa CV')
       elseif F==0 & E==0 & s/A==0  
            disp('La EG representa un plano')    
        end
    elseif A==0 & B~=0 & C==0 
        if D~=0 & F~=0
          disp('La EG representa un cilindro parab�lico rotado')
        elseif (D~=0 & F==0) | (D==0 & F~=0)
            disp('La EG representa un cilindro parab�lico') 
            E=0;
        elseif D==0 & F==0 & s/E<0  
            disp('La EG representa dos planos')
        elseif D==0 & F==0 & s/E>0  
            disp('La EG representa CV')
        elseif D==0 & F==0 & s/E==0  
            disp('La EG representa un plano')    
        end
         
elseif  A==0 & B==0 & C~=0 
         if D~=0 & E~=0
            disp('La EG representa un cilindro parab�lico rotado');
         elseif (D~=0 & E==0) | (D==0 & E~=0)
            disp('La EG representa un cilindro parab�lico');
            F=0;
         elseif D==0 & E==0 & s/C<0   
            disp('La EG representa dos planos')
         elseif D==0 & E==0 & s/C>0  
            disp('La EG representa CV')
         elseif D==0 & E==0 & s/C==0  
            disp('La EG representa un plano')    
         end
end
end
if s<0
ecuatras=A/s*x1^2+B/s*y1^2+C/s*z1^2+D/s*x1+E/s*y1+F/s*z1+1
else
   ecuatras=-1*(A/s*x1^2+B/s*y1^2+C/s*z1^2+D/s*x1+E/s*y1+F/s*z1+1)
end