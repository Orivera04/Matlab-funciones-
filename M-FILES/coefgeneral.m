function [A,B,C]=coefgeneral(X,Y)
%Coeficientes de la ecuaci�n general de la recta Ax+By+c=0
%dados dos puntos A=[X1,Y1],B=[X2,Y2].(m~=0,m~=Inf)

d1=X(2)-X(1);
d2=Y(2)-Y(1);
if d1==0 | d2==0
    disp('m=0 O m=Inf')
end
f=lcm(d1,d2);
A=f/d1;
B=-f/d2;
C=f*(Y(1)/d2-X(1)/d1);


