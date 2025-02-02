%Traslaciones M: matriz de gr�fica original.
%T: Matriz de traslaci�n.
%TX: traslacion sobre el eje X
%TY: traslacion sobre el eje 
%TV: traslacion en direcci�n del vector V=[h,k]
clear;
clc;
%Introducci�n de dominio y rango de gr�fica 
x=input('Introducir dominio de la gr�fica x=');
y=input('Introducir funci�n f(x)=');
%Selecci�n de traslaci�n y gr�fica.
disp('Seleccionar traslaci�n en el men�');
n=menu('Escoja tipo de traslaci�n','Traslaci�n en direcci�n X',...
    'Traslaci�n en direcci�n Y','Traslacion en direcci�n V');
switch n
    case 1
        h=input('Dar constante de traslaci�n h= ');
        x1=x+h;
        plot(x,y);
        title(['Traslaci�n en direcci�n de X. h=',num2str(h)]);
        hold on;
        plot(x1,y,'r');
        grid on;
    case 2
        k=input('Dar constante de traslaci�n k= ');
        y1=y+k;
        plot(x,y);
        title(['Traslaci�n en direcci�n de Y. k=',num2str(k)])
        hold on;
        plot(x,y1,'r');
        grid on;
    case 3
        TV=input('Dar vector de traslaci�n [h,k]=');
        h=TV(1);
        k=TV(2);
        x1=x+h;
        y1=y+k;
        plot(x,y);
        title(['Traslaci�n en direcci�n de V =',[num2str(h),num2str(k)]])
        hold on;
        plot(x1,y1,'r');
        grid on;
end

