%M�todo de completaci�n de cuadrados para obtener la ecuaci�n
%can�nica de una c�nica apartir de la ec. general Ax^2+By^2+Cx+Dy+F=0

%Leer los coeficientes A,B,C,D,F 
A=input('Dar el coeficiente A: ');
B=input('Dar el coeficiente B: ');
C=input('Dar el coeficiente C: ');
D=input('Dar el coeficiente D: ');
F=input('Dar el coeficiente F: ');
if A>0 & B>0 
%Calcular las traslaciones h,k y el t.i. f
h=C/(-2*A);
k=D/(-2*B);
f=A*h^2+B*k^2-F;
%Ecuaci�n can�nica
syms x y
a=f/A;
b=f/B;
disp('La ecuaci�n can�nica es: ');
ec=((x-h)^2/a+(y-k)^2/b);
ecu=strcat(char(ec),'=1')
elseif A>0 & B<0
h=C/(-2*A)
k=D/(-2*B)
f=A*h^2+B*k^2-F
syms x y
a=f/A;
b=f/B;
disp('La ecuaci�n can�nica es: ');
ec=((x-h)^2/a+(y-k)^2/b);
ecu=strcat(char(ec),'=1')
elseif A<0 & B>0
h=C/(-2*A)
k=D/(-2*B)
f=A*h^2+B*k^2-F
syms x y
a=f/A;
b=f/B;
disp('La ecuaci�n can�nica es: ');
ec=((x-h)^2/a+(y-k)^2/b);
ecu=strcat(char(ec),'=1')
end
