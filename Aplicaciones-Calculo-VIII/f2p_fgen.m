%Conversi�n de la forma dos-puntos a la forma general

%Introducir los dos puntos
P1=input('Dar coordenadas de P1: ');
P2=input('Dar coordenadas de P2: ');
syms x y
den1=P2(1)-P1(1);
den2=P2(2)-P1(2);
ecua2p=(x-P1(1))/den1-(y-P1(2))/den2;
e2p1=char((x-P1(1))/den1);
e2p2=char((y-P1(2))/den2);
ecua2ptos=horzcat(e2p1,' = ',e2p2)
fac=lcm(abs(den1),abs(den2));
ec2p=fac*ecua2p;
ec_general=sort(ec2p);
eg=char(ec_general);
disp('Ecuaci�n general:');
ec_gen=horzcat(eg,' = 0');
disp(ec_gen)

