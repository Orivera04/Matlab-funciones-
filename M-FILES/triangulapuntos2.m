function [v,w]=triangulapuntos2()
clear,clc, clf, hold off
%global posi h;
axis([0,15,0,15]);
hold on;
plot([1,2,2,1,1],[2,2,3,3,2]);
text(1,1.6,'Haga clic dentro del cuadro para terminar')
i=0;
while 1
[x,y,boton]=ginput(1);
if boton ==1, plot(x,y,'+r');i=i+1;v(i)=x;w(i)=y;end;
if boton ==2, plot(x,y,'oy');end;
if boton ==3, plot(x,y,'*g');end;
if x>1 & x<2 & y>2 & y<3,break; end
end
hold off
close
n=i
v(i)=v(1);
w(i)=w(1);
plot(v,w);
hold on; %Hasta aqu�, no cambiar.
%Dibujo del pol�gono.
for k=1:2:n-3
    P=[v(k),w(k)];
    Q=[v(k+2),w(k+2)];
    R=[v(k+1),w(k+1)];
    %S=[v(k+3),w(k+3)];
    pint=interior2(P,R,Q,v,w);
    pos=posicion2(P,Q,R);
    if pos==1&pint==0
       plot([P(1),Q(1)],[P(2),Q(2)],'r')
    end 
end






