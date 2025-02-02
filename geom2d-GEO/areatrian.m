% Dados tres puntos A=(x1,y1), B=(x2,y2) y C=(x3,y3) que son los vertices de un
% triangulo. Haga un programa en Matlab que calcule el area del triangulo formado
% por dichos vertices sabiendo que puede calcular la longitud de los lados por el
% teorema de pitagoras de la siguiente manera:
%              _________________________ 
% distancia = V (x1 - x2)� + (y1 - y2)�
% 
% Una vez calculadas las longitudes de los lados puede calcular el area del 
% triangulo con la formula de Heron que dice: dadas las longitudes de los tres
% lados de un triangulo, a,b,c, el area se calcula mediante:
%         _________________________
% Area = V s (s - a)(s - b)(s - c)
% 
% donde s es la mitad del perimetro del triangulo, es decir:
% 
% s = (a + b + c)/2
% 
% Los puntos A=(x1,y1), B=(x2,y2) y C=(x3,y3) deben ser introducidos por el usuario.

clc;
fprintf ('Introduzca las coordenadas del primer punto del triangulo, punto A \n');
x1=input('x1=  ');
y1=input('y1=  ');
fprintf ('Introduzca las coordenadas del segundo punto del triangulo punto B \n');
x2=input('x2=  ');
y2=input('y2=  ');
fprintf ('Introduzca las coordenadas del tercer punto del triangulo punto C \n');
x3=input('x3=  ');
y3=input('y3=  ');
a=sqrt( ((x1 - x2)^2) + ((y1 - y2)^2));
b=sqrt( ((x2 - x3)^2) + ((y2 - y3)^2));
c=sqrt( ((x1 - x3)^2) + ((y1 - y3)^2));
s=(a + b + c)/2;
area=sqrt(s * (s - a) * (s - b) * (s - c));
fprintf('\nLos puntos de los vertices del triangulos son: \n');
fprintf('A = (%d, %d)     B = (%d, %d)     C = (%d, %d) \n\n',x1,y1,x2,y2,x3,y3);
fprintf('Las longitudes de los lados son: \n');
fprintf('a(AB) = %.2f     b(BC) = %.2f     c(AC) = %.2f\n\n',a,b,c);
fprintf('El area del triangulo es:  %.2f unidades cuadradas',area);