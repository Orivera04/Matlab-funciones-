%Ecuaci�n de la recta en la forma punto-pendiente.
%Se da un punto de la recta (x0,y0) y la pendiente
% y se obtiene la ecauci�n de la recta: y=y0+m*x-m*x0.
x0=input('Introduzca la abscisa del punto dado x0: ');
y0=input('Introduzca la ordenada del punto dado y0: ');
m=input('Introduzca la pendiente de la recta m: ');
syms x y;
disp('La ecuaci�n de la recta es: ');
if m>0 & x0>0
  fprintf('y = %4.2f + %4.2f(x - %4.2f)\n', y0,m,x0)
elseif m>0 & x0<0
  fprintf('y = %4.2f + %4.2f(x + %4.2f)\n', y0,m,x0)   
elseif m<0 & x0>0
  fprintf('y = %4.2f - %4.2f(x - %4.2f)\n', y0,m,x0)
else
    fprintf('y = %4.2f - %4.2f(x + %4.2f)\n', y0,m,x0)
end