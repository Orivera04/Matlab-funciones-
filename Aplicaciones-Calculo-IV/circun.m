%Programa para hallar ecuaciones de circunferencias en varios casos

n=menu('Seleccionar un caso','Centro origen,radio:r','Centro:(h,k),radio:r',...
    'Tangente en origen al eje x,radio:r','Tangente en origen al eje y,radio:r',...
    'Pasa por A(x0,y0),Centro:(h,k)','Extremos de un di�metro: A(x0,y0),B(x1,y1)',...
    'Centro: Origen,tangente a Ax+By+C=0','Centro: A(h,k),tnagente a Ax+By+C=0',...
    'Pasa por A(x0,y0),B(x1,y1),Centro en la recta: Ax+By+C=0','Pasa por A(x0,y0),B(x1,y1),C(x2,y2)');
    
switch n
    case 1
        r=input('Dar el radio: r= ');
        rcuad=r^2;
        fprintf('\nLa ecuaci�n es: x^2 + y^2 = %2.0f \n',rcuad)
    case 2
         r=input('Dar el radio: r= ');
         rcuad=r^2;
         h=input('Dar la cordenada h del centro h= ');
         k=input('Dar la cordenada k del centro k= ');
         fprintf('\nLa ecuaci�n es: (x-%2.0f)^2+(y-%2.0f)^2 = %2.0f \n',h,k,rcuad);
    case 3
        r=input('Dar el radio: r= ');
         fprintf('\nLa ecuaci�n es: x^2+y^2-%2.0fy = 0\n', 2*r);
end
        

    
     