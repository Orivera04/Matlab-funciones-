%Gr�fica de una funci�n a definida a trozos

clear all;
clc;
minab=input('Dar extremo izq. del intervalo [a,b]: ');
maxab=input('Dar extremo der. del intervalo [a,b]: ');
h=input('Dar el paso h: ');
x=minab+h;
i=2;
y2(1)=0;
ymin=input('Dar el valor m�nimo de y en la gr�fica: ');
ymax=input('Dar el valor m�ximo de y en la gr�fica: ');
axis([minab maxab ymin ymax]);
hold on;
plot([minab maxab],[0 0],'r');
plot([0 0],[ymin ymax],'r');
while x>=minab & x<=maxab  
disp(['subintervalo # ',num2str(i-1)]);
xmin=input('Dar xmin del subintervalo: ');
xmax=input('Dar xmax del subintervalo: ');
    x=xmin:h:xmax;
    y=input('fun(x)=');
    x=xmin;
    y1(i)=eval(y);
    x=xmax;  
    y2(i)=eval(y);
    plot([xmin,xmin],[y2(i-1),y1(i)],':r');
    fplot(y,[xmin xmax]);
    axis tight
    x=xmax+0.01;
    i=i+1;
end
shg;
grid on
hold off
