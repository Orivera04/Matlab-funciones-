%Funci�n diente de sierra
f1=1:2:401;
f2=1./f1;
%t=-1:0.1:1;
f3=2:4:802;
syms t;
f4=pi*t*f3;
f5=sin(f4);
suma=sum(f2.*f5 )*4/pi;
t=-1:0.1:1;
y=eval(suma);
plot(t,y)

