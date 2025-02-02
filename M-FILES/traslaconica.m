%M�todo de completaci�n de cuadrados para obtener la ecuaci�n
%can�nica de una c�nica apartir de la ec. general Ax^2+By^2+Cx+Dy+F=0

%Leer los coeficientes A,B,C,D,F 
A=input('Dar el coeficiente A: ');
B=input('Dar el coeficiente B: ');
C=input('Dar el coeficiente C: ');
D=input('Dar el coeficiente D: ');
F=input('Dar el coeficiente F: ');
syms x y
if A==0 & B==0
    disp('La ecuaci�n representa una recta o ning�n punto');
    break
end
if A<0 & B<0
    A=-A
    B=-B
    C=-C
    D=-D
    F=-F
end
     disc=B*C^2+A*D^2-4*A*B*F;
     
if A~=0 & B~=0
    if disc == 0
      disp('La ecuaci�n representa un punto');
      break
    elseif disc < 0 
      if A*B>0
          disp('La ecuaci�n representa el conjunto vac�o');
          break
      elseif A*B<0 
          disp('')
      end      
    else    
        disp('');
    end   
%Calcular las traslaciones h,k y el t.i. f
h=C/(-2*A);
k=D/(-2*B);
f=A*h^2+B*k^2-F;
%Ecuaci�n can�nica
a=f/A;
b=f/B;
if a*b>0 & a==b
    disp('La c�nica es una circunferencia con ecuaci�n:');
elseif a*b>0 & a~=b
    disp('La c�nica es una elipse con ecuaci�n:');   
elseif a*b<0
    disp('La c�nica es una hip�rbola con ecuaci�n:');
end
    ec=((x-h)^2/a+(y-k)^2/b);
    ecu=strcat(char(ec),'=1');
    ecua=sym(ecu);
    pretty(ecua);
elseif A~=0 & B==0
    if D==0 
        disp('La ecuaci�n representa dos rectas o el conjunto vac�o')
        break
    end 
    disp('La c�nica es una par�bola con ecuaci�n:');
    h=C/(2*A);
    k=F/D-C^2/(4*A*D);
    p=A/D;
    par1=(y-k);
    par2=-p*(x+h)^2;
    ecu=strcat(char(par1),'=',char(par2));
    ecua=sym(ecu);
    pretty(ecua);
elseif A==0 & B~=0
        if  D==0
            disp('La ecuaci�n representa dos rectas paralelas o c. vac�o');
            break
        end

    disp('La c�nica es una par�bola con ecuaci�n:');
    h=D/(2*B);
    k=F/C-D^2/(4*B*C);
    p=B/C;
    par1=(x-h);
    par2=-p*(y+h)^2;
    ecu=strcat(char(par1),'=',char(par2));
    ecua=sym(ecu);
    pretty(ecua);
    
end
    
