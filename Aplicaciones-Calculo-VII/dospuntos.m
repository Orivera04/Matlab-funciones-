%Ecuaci�n de la recta dados dos puntos (xo,yo), (x1,y1)

%Introducir los puntos (xo,y0),(x1,y1)
syms x y
xo=input('Dar la coordenada xo: ');
yo=input('Dar la coordenada yo: ');
x1=input('Dar la coordenada x1: ');
y1=input('Dar la coordenada y1: ');
Xo=-xo;
Yo=-yo;
x1_0=x1-xo;
y1_0=y1-yo;
disp('La ecuaci�n en la forma dos puntos es:');
fprintf('(x %+4.2f)/%4.2f = (y %+4.2f)/%4.2f\n',Xo,x1_0,Yo,y1_0);
disp('La ecuaci�n en la forma general es:');
str1=simplify((x-x1)/x1_0 - (y-y1)/y1_0);
str2=' = 0';
ecua=horzcat(char(str1),str2)
