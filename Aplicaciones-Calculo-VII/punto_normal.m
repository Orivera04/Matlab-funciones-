%Ecuaci�n de una recta dado un vector normal a la recta y un punto de ella.
%La ecuaci�n tiene la forma: A(x.xo) + B(y-yo) = 0, con n=[A,B], P=(xo,yo)

%Introducir el punto (A,B)
clear;
clc;
xo=input('Dar la coordenada xo del punto P: ');
yo=input('Dar la coordenada yo del punto P: ');

%Introducir el vector n

A=input('Dar la coordenada A del vector n: ');
B=input('Dar la coordenada B del vector n: ');

disp('La ecuaci�n punto-normal de la recta es:');
fprintf('%4.2f(x%+4.2f) + %4.2f(y%+4.2f) = 0\n',A,xo,B,yo);
x=input('Dar el valor de x: ');
val=solve('A*(x-xo)+B*(y-yo)=0','y');
y=eval(val);
plot([xo,x],[yo,y]);
hold on;
x=input('Dar otro valor de x: ');
val=solve('A*(x-xo)+B*(y-yo)=0','y');
y=eval(val);
plot([xo,x],[yo,y]);
axis([-5 5 -5 5]);
arrow([xo,yo],[xo+A,yo+B ]);
plot(xo,yo,'*r');
legend('Recta (azul)','Vector Normal (negro)');
hold off













