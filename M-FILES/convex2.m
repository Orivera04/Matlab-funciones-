function convex2(v,w)
%Funci�n para convexificar pol�gonos.
global  picos suma2 area2 n_inicial n_final;
n=numel(v);
hold on;
posi=0; areaPQR=0;
for k=1:2:n-2
    P=[v(k),w(k)];
    Q=[v(k+2),w(k+2)];
    R=[v(k+1),w(k+1)];
    pos=posicion2(P,Q,R);
    if pos==2
       plot([P(1),Q(1)],[P(2),Q(2)],'k')
       %det=v(k)*w(k+1)+v(k+1)*w(k+2)+v(k+2)*w(k)-v(k)*w(k+2)-v(k+1)*w(k)-v(k+2)*w(k+1);
       %suma2=suma2+det;
       x=[v(k),v(k+1),v(k+2),v(k)];y=[w(k),w(k+1),w(k+2),w(k)];
       areaPQR(k)=areapol(x,y)
       posi(k)=k+1;
    end 
end
%clc;
suma2=sum(areaPQR);
picos=posi(posi~=0);
v(picos)=[];w(picos)=[];
n_inicial=n
n_final=n-numel(picos)


    
    



