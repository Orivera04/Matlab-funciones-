function e=dibujapuntos2()
clear,clc, clf, hold off
axis([-1,10,-1,10]);grid on;
hold on;
plot([-1,0,0,-1,-1],[-1,-1,1,1,-1],'r');
text(-0.7,-0.5,'clic');text(-0.7,0.5,'clic');
i=0;
while 1
[x,y,boton]=ginput(1);
if boton ==1, plot(x,y,'+r');i=i+1;v(i)=x;w(i)=y;end;
if boton ==2, plot(x,y,'oy');end;
if boton ==3, plot(x,y,'*g');end;
if x>-1 & x<0 & y>-1 & y<1,break; end
end
hold off
close
n=i;v=round(v);w=round(w);
e=cell(n,1);
for i=1:n
        e{i}=[v(i), w(i)];
end
celldisp(e)
%v(i)=v(1);
%w(i)=w(1);
%plot(v,w);
hold on; %Hasta aqu�, no cambiar.
%Dibujo del pol�gono.

for k=1:n-1
    plot(v(k),w(k),'ok'),grid on;
    text(v(k)+0.1,w(k)+0.1,['v',num2str(k)])
    str=strcat('v',num2str(k),'=[v(',num2str(k),'),w(',num2str(k),')]')
    eval(str)
end
hold on;