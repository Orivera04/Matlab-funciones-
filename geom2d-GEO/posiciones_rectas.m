%Posici�n de dos rectas:a1x+b1y+c1=0, a2x+b2y+c2=0: 
%Casos: concurrentes, paralelas,coincidentes, perpendiculares.
clc;
%Introducir los coeficientes de cada recta
a1=input('Coeficiente a1: ');
b1=input('Coeficiente b1: ');
c1=input('Coeficiente c1: ');
a2=input('Coeficiente a2: ');
b2=input('Coeficiente b2: ');
c2=input('Coeficiente c2: ');
%Vectores normaales de 1as rectas:
P=[a1,b1;b2,-a2];p=det(P);
A=[a1,a2;b1,b2]; Xc=[a1,a2;c1,c2];Yc=[b1,b2;c1,c2];
a=det(A); xc=det(Xc);yc=det(Yc);
a
p
if a~=0
    if p==0
        disp('Las rectas son perpendiculares y se cortan en el punto');
        x=xc/a
        y=yc/a
    else
        disp('Las rectas se cortan en el punto');
         x=xc/a
         y=yc/a
    end
else
    if xc~=0 | yc~=0
        disp('Las rectas son paralelas')
    else
        disp('Las rectas son coincidentes')
    end
end
