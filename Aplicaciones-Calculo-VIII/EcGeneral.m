%Ecuaci�n general de la recta dados dos puntos de la misma
%Dados P(x1,y1) y Q(x1,y2) hallar la ecuaci�n: Ax+By+C=0

%Introducir los puntos P y Q
x1=input('Dar la coordenada x1 del punto P: ');
x2=input('Dar la coordenada x2 del punto P: ');
y1=input('Dar la coordenada y1 del punto Q: ');
y2=input('Dar la coordenada y2 del punto Q: ');

%Escribir la ecuaci�n en la forma dos_puntos y resolver para y

syms x y 
if x1==y1 & x2==y2
    disp('No hay recta; s�lo hay un punto')
elseif y2==y1
    disp('La ecuaci�n de la recta es:')
    A=x2-x1;
    C=-A*y1;
    fprintf('%4.2fy %+4.2f = 0\n',A,C);
elseif x2==x1
    disp('la ecuaci�n de larecta es:');
    B=y2-y1;
    C=-B*x1;
    fprintf('%4.2fx %+4.2f = 0\n\n',B,C);
else
    disp('La ecuaci�n de la recta es:')
    A=y2-y1;
    B=(x2-x1);
    B1=-B;
    C=B*y1-A*x1;
    fprintf('%4.2fx %+4.2fy %+4.2f = 0\n',A,B1,C);
end
    
    
    

