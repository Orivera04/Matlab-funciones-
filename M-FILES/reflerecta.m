%Reflexion con respecto a la recta Ax+By+C=0
A=input('coeficiente A:');
B=input('coeficiente B:');
C=input('coeficiente C:');
if A==0 & B==0
    disp('Al menos un coeficiente no debe ser cero');
    break
elseif B==0
   R=[-C/A,-10]
else
   R=[0,-C/B] 
end;
P=input('Matriz 2 x m de ptos. a reflejar P=');
%R=[0,-C/B] %Punto sobre la recta.
n=[A,B]; %vector normal a la recta.
hold on;
NC=A^2+B^2;%Cuadrado de la norma del vector n
M1=-P(1,:)+R(1)
M2=-P(2,:)+R(2)
M=[M1;M2]
nn=[A/NC,B/NC];
N=nn'*n;
VN=M'*N;
%VN=VN1';
PR=P+2*VN';
dot2dot(P);
dot2dot(PR);

xmin1=min(min(P));xmin2=min(min(PR));
ymin1=min(min(P));ymin2=min(min(PR));
xmax1=max(max(P));xmax2=max(max(PR));
ymax1=max(max(P));ymax2=max(max(PR));

xmin=min(xmin1,xmin2);xmax=max(xmax1,xmax2);
ymin=min(ymin1,ymin2);ymax=max(ymax1,ymax1);
if B==0
    R=[-C/A,-10] % Primer punto sobre la recta.
    Q=[-C/A,10];%Segundo punto sobre la recta
    plot([R(1),Q(1)],[R(2),Q(2)],'r');% Gr�fica de la recta
else
    R=[xmin,(-A*xmin-C)/B] % Primer punto sobre la recta.
    Q=[xmax,(-A*xmax-C)/B];%Segundo punto sobre la recta
    plot([R(1),Q(1)],[R(2),Q(2)],'r');% Gr�fica de la recta
end
axis([xmin xmax ymin ymax]);
axis equal

