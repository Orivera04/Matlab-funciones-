%Fourier series.

clear;
clc;
m=input('No. de t�rminos a usar: ')
omega = 2*pi;
syms n t;
tg= (-1)^(n+1)*cos((2*n-1)*omega*t)/(2*n-1);
S=char(4*symsum(tg,n,1,m)/pi);
ezplot(S,[-2 2]),
%grid
title(['onda cuadrada con ',num2str(m),' t�rminos de la serie'])
xlabel('t')
hold on
x1=[-2,-1.75,-1.75,-1.5,-1.25,-1.25,-1];
y1=[1,1,-1,-1,-1,1,1];
x=[x1,x1+1,x1+2,x1+3];
y=[y1,y1,y1,y1];
plot(x,y,'r-','LineWidth', 1.0000);
legend('serie de Fourier','onda cuadrada')