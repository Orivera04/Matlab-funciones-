%Ejemplo 2 de uso del comando title
%Gr�fica de la ecuaci�n de la recta: ax+by+c=0
a=input('Dar coeficiente a: ');
b=input('Dar coeficiente b: ');
c=input('Dar t�rmino independiente c: ');
x=-2:0.1:2;
y=(-a/b)*x-c/b;
plot(x,y);
m=-a/b;
n=-c/b;
cad1='Gr�fica de y =';
cad2=num2str(m);
cad3='x';
if m>0
    cad4='+ '
else
    cad4=' '
end
cad5=num2str(n);
cadena=strcat(cad1,cad2,cad3,cad4,cad5);
%title(['Gr�fica de y=',num2str(m),'x ',num2str(n)])
title([cadena])