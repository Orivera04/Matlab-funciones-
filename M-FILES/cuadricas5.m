%Ecuaciones can�nicas de las cu�dricas
clc;
syms x y z x1 y1 z1 ;
Coef=input('Coeficientes de la EG:[A B C D E F G]= '); 
A=Coef(1); B=Coef(2); C=Coef(3);D=Coef(4);E=Coef(5);F=Coef(6);G=Coef(7);
if A~=0, h=-1/2/A*D; else, h=0;end
if B~=0, k=-1/2/B*E; else, k=0;end
if C~=0, m=-1/2/C*F; else, m=0;end
disp(['Vector de traslaci�n:[h,k,m]= [',num2str([h,k,m]),']']);
s=A*h^2+B*k^2+C*m^2+D*h+E*k+F*m+G;
disp(['T. independiente despu�s de traslaci�n: s=',num2str(s)]);
d=D;e=E;f=F;u=[A,B,C];P=A*B*C;
if A~=0, D=0;end; if B~=0, E=0;end; if C~=0, F=0;end
if (A<0&B<0&C<0)|(A<0&B<0|A<0&C<0|B<0&C<0),A=-A; B=-B; C=-C;s=-s;end; 
%Ecuaciones
if s~=0
   S=-s;
   ecua2=char(1/S*(A*x1^2+B*y1^2+C*z1^2+D*x1+E*y1+F*z1));
end
ecua1 = char(A*x^2+B*y^2+C*z^2+d*x+e*y+f*z+G);
ecua3=char(A*x1^2+B*y1^2+C*z1^2+D*x1+E*y1+F*z1);
ecuacion_original=strcat(ecua1,'=0');
disp('Ecuaci�n original:');
pretty(sym(ecuacion_original));
ecuacion_trasladada1=strcat(ecua2,'=1');
ecuacion_trasladada2=strcat(ecua3,'=0');
if s~=0
  disp('Ecuaci�n can�nica:');  
  pretty(sym(ecuacion_trasladada1))
else
  disp('Ecuaci�n can�nica:');  
  pretty(sym(ecuacion_trasladada2))
end
disp('Tipo de superficie:')
%Transformaci�n de la ecuaci�n original
if A~=0, D=0;end; if B~=0, E=0;end; if C~=0, F=0;end
if (A<0&B<0&C<0)|(A<0&B<0|A<0&C<0|B<0&C<0),A=-A; B=-B; C=-C;s=-s;end; 

if P>0
if numel(u(u>0))==3
    D=0;E=0;F=0;
    if s>0
        disp('Conjunto vac�o')
    elseif s<0
        disp('Elipsoide o esfera')
    elseif s==0
        disp('Un punto')
    end
elseif numel(u(u>0))==1
    D=0;E=0;F=0;
    if s>0
     disp('Hiperboloide de una hoja')   
    elseif s<0
     disp('Hiperboloide de dos hojas')   
    elseif s==0
     disp('Cono el�ptico o circular')   
    end
   end
elseif P<0
  D=0;E=0;F=0;  
    if s>0
        disp('Hiperboloide de dos hojas')
    elseif s<0
        disp('Hiperboloide de una hoja')
    elseif s==0
        disp('Cono el�ptico o circular')
end
elseif P==0
if numel(u(u>0))==2 %caso #1
    if A*B>0,D=0;E=0;end; if A*C>0,D=0;F=0;end; if B*C>0,E=0;F=0;end;
    v=[D,E,F];
    if numel(v(v==0))==3
       if s==0  
           disp('Un punto'); 
       elseif s>0
           disp('Conjunto vac�o');  
       elseif s<0
             disp('Cilndro el�ptico o circular')
       end
   elseif numel(v(v~=0))==1  
           disp('Paraboloide el�ptico')  
   end

elseif numel(u(u~=0))==2 %caso #2 
       if A*B<0,D=0;E=0;end; if A*C<0,D=0;F=0;end; if B*C<0,E=0;F=0;end;
       v=[D,E,F];
       if numel(v(v==0))==1
         if s==0
           disp('Dos planos que se cortan')
           else
           disp('Cilindro hiperb�lico')
         end
       elseif numel(v(v==0))==2
           disp('Paraboloide hiperb�lico') 
       end 
elseif numel(u(u~=0))==1 %caso #3
    if A~=0,D=0;end;if B~=0,E=0;end;if C~=0,F=0;end;
        v=[D,E,F];
        if numel(v(v==0))==1
            disp('Cilindro parab�lico rotado')
        elseif numel(v(v==0))==2
            disp('Cilindro parab�lico')    
        elseif numel(v(v==0))==3
           if s<0
               disp('Conjunto vac�o') 
            elseif s>0
               disp('Dos planos ')
            elseif s==0
               disp('Un plano') 
            end 
        end 
end
end


