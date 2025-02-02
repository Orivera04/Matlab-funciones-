clear;
clc;
d = input( '�ngulo de lanzamiento en grados: ' );                           
t = input( 'tiempo en vuelo: ' );                                           
a = d * pi / 180;     % convert to radians                 
u = 60;               % launch velocity                    
g = 9.8;                                                                   
x = u * cos(a)* t;   % horizontal displacement            
y = u * sin(a)* t  - 0.5 * g * t.^ 2; % vertical ...
s=solve('u * sin(a)*r  - 0.5 * g * r^ 2','r');
subplot(3,1,1);
plot(x,y,'k*');grid;        %displacement              
title('posici�n (x,y) en el tiempo t')
vx = u * cos(a); % horizontal velocity                
vy = u * sin(a) - g * t;  
subplot(3,1,2);% vertical velocity 
plot(t,vy,'m*');grid;
title('componente vy en un tiempo t');
V = sqrt( vx.^2 + vy.^2 );  % resultant velocity  
subplot(3,1,3);
plot(t,V,'r*');grid;
title('velocidad en un tiempo t')
th = 180 / pi * atan2( vy, vx );   % direction at time t        
disp( ['x:  ' num2str(x)]);
disp( ['y:  ' num2str(y)]);  
disp( ['V:  ' num2str(V)]); 
disp( ['th: ' num2str(th)]);

disp('tiempo de alcance: ');
talcance=eval(s(2)) 
alcance=u * cos(a)* talcance
disp('tiempo para alcanzar altura m�xima: ');
taltmax=u*sin(a)/g %tiempo para alcanzar la altura m�xima.
disp('altura m�xima: ');
altmax=u * sin(a)* taltmax  - 0.5 * g * taltmax^ 2 %altura m�xima.
disp('posici�n final: ');
x=x(end)
y=y(end)
disp('velocidad alcanzada');
Vfin=V(end)