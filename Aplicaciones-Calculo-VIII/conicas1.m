%M�todo de completaci�n de cuadrados para hallar la ecuaci�n can�nica 
% de una c�nica o c�nica degenerada

%Introducci�n de los coeficientes de la ecuaci�n
%general:Ax^2+Cy^2+Dx+Ey+F=0

A=input('Dar el coeficiente A: ');
C=input('Dar el coeficiente C: ');
D=input('Dar el coeficiente D: ');
E=input('Dar el coeficiente E: ');
F=input('Dar el coeficiente F: ');
if A==0 & C==0
    disp('La ecuaci�n representa una recta o el conjunto vac�o')
elseif A*C==0 & A==0
    c2y=E/(2*C);
    c3y=c2y^2;
    h=c2y
    k=(F-c3y)/D
    p=-D
    disp('La c�nica es una par�bola con ecuaci�n can�nica: ');
    fprintf('(y %+4.2f)^2 = %+4.2(x %+4.2f)\n',h,p,k);
elseif A*C==0 & C==0
    c2x=E/(2*A);
    c3x=c2x^2;
    h=c2x
    k=(F-c3x)/E
    p=-E 
     disp('La c�nica es una par�bola con ecuaci�n can�nica: ');
    fprintf('(x %+4.2f)^2 = %+4.2(y %+4.2f)\n',h,p,k);
elseif A*C > 0  
%Hallae los 2os. coeficentes del trinomio en x y del trinomo en y
c2x=D/(2*A);
c2y=E/(2*C);
h=c2x
k= c2y
disp('La c�nica es una elipse con ecuaci�n can�nica: ');
fprintf('(x %+4.2f)^2/%4.2f + (y %+4.2f)^2/%4.2f = 1\n',h,C,k,A)
elseif A*C < 0 & A>0
 %Hallae los 2os. coeficentes del trinomio en x y del trinomo en y
c2x=D/(2*A);
c2y=E/(2*C);
h=c2x
k= c2y
c=abs(C);
a=abs(A);
fprintf('La c�nica es una hip�rbola con ecuaci�n can�nica: ')
fprintf('(x %+4.2f)^2/%4.2f - (y %+4.2f)^2/%4.2f = 1\n',h,c,k,a)
elseif A*C < 0 & A<0
 %Hallae los 2os. coeficentes del trinomio en x y del trinomo en y
c2x=D/(2*A);
c2y=E/(2*C);
h=c2x
k= c2y
c=abs(C);
a=abs(A);
fprintf('La c�nica es una hip�rbola con ecuaci�n can�nica: ')
fprintf('(y %+4.2f)^2/%4.2f - (x %+4.2f)^2/%4.2f = 1\n',h,a,k,c)
end





