%Ecuaci�n General de 2o. grado: Ax^2+Bxy+Cy^2+Dx+Ey+F=0
%Introducir los coeficientes de la ecuaci�n
A=input('Dar coeficiente A: ');
B=input('Dar coeficiente B: ');
C=input('Dar coeficiente C: ');
D=input('Dar coeficiente D: ');
E=input('Dar coeficiente E: ');
F=input('Dar coeficiente F: ');
 if B==0 & D==0 & E==0 & F<0 & A>0 & C>0
     disp('La ecuaci�n representa una elipse')
 elseif (B==0 & D==0 & E==0 & A>0 & C<0 & F<0)|(B==0 & D==0 & E==0 & A<0 & C>0 & F<0)
     disp('La ecuaci�n representa una hip�rbola')
 elseif (A==0&B==0&E==0&C>0&abs(D)>0)|(B==0&C==0&D==0&A>0&abs(E)>0)
     disp('La ecuaci�n representa una par�bola')
 elseif A>0&C>0&B==0&D==0&E==0&F==0
     disp('La ecuaci�n representa un punto: el (0,0)')
 elseif (A>0&C<0&B==0&D==0&E==0&F==0)|(A<0&C>0&B==0&D==0&E==0&F==0)
     disp('La ecuaci�n representa un par de rectas que se cortan')
 elseif (C>0&F<0&A==0&B==0&D==0&E==0)|(A>0&F<0&C==0&B==0&D==0&E==0)
     disp('La ecuaci�n representa un par de rectas paralelas')
 elseif (C>0&A==0&B==0&D==0&E==0&F==0)|(A>0&C==0&B==0&D==0&E==0&F==0)
     disp('La ecuaci�n representa una recta')
 elseif A>0&C>0&F>0&(B==D==E==0)
     disp('La ecuaci�n representa el conjunto vac�o')
 elseif A>0&F>0&(B==C==D==E==0)| C>0&F>0&(A==B==D==E==0)
     disp('La ecuaci�n representa el conjunto vac�o')
 else
     disp('Caso no considerado')
 end