function [v,w]=triangulapuntos5()
%Dibujo del pol�gono.
clear,clc, clf, hold off
axis([0,10,0,10]);
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
hold on; 
%Hasta aqu�, no cambiar.
%Primera pasada del algoritmo.
for k=1:2:n-3
    P=[v(k),w(k)];
    Q=[v(k+2),w(k+2)];
    R=[v(k+1),w(k+1)];
    pint=interior2(P,R,Q,k,v,w);
    pos=posicion2(P,Q,R);
    if pos==1 
        if pint==0
          plot([P(1),Q(1)],[P(2),Q(2)],'r')
          posi(k)=k+1;
        end
    end 
end
clc;
picos3=posi(posi~=0); 
v(picos3)=[];w(picos3)=[];
n_final3=n-numel(picos3); 
%Aqu� comienza triangulapuntos4
if n<=5
  triangula5(v,w);
  disp('Fin de la triangulaci�n');
  return
end
clc;
%Comenzando an�lisis en n=1
for k=1:2:n-3
    P=[v(k),w(k)];
    Q=[v(k+2),w(k+2)];
    R=[v(k+1),w(k+1)];
    pint=interior2(P,R,Q,k,v,w);
    pos=posicion2(P,Q,R);
    if pos==1
       if pint==0
          plot([P(1),Q(1)],[P(2),Q(2)],'k')
          posi(k)=k+1;
        end
    end 
end
clc;
picos41=posi(posi~=0); 
v(picos41)=[];w(picos41)=[];
n_final41=n-numel(picos41); 
%Comenzando an�lisis en n=2
for k=2:2:n-3
    P=[v(k),w(k)];
    Q=[v(k+2),w(k+2)];
    R=[v(k+1),w(k+1)];
    pint=interior2(P,R,Q,k,v,w);
    pos=posicion2(P,Q,R);
    if pos==1
       if pint==0
          plot([P(1),Q(1)],[P(2),Q(2)],'k')
          posi(k)=k+1;
        end
    end 
end
picos42=posi(posi~=0); 
v(picos42)=[];w(picos42)=[];
n_final42=n-numel(picos42); 
clc;
%Reporte final
picos3 
v(picos3)
w(picos3)
n_final3

picos41 
v(picos41)
w(picos41)
n_final41 

picos42 
v(picos42)
w(picos42)
n_final42

