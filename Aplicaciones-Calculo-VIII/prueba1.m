function coefecua() 
%Coeficientes de una ecuaci�n lineal Ax+By+C=0
f=input('Introducir la ecuaci�n como una cadena:');
s=findstr(f,'x');
t=findstr(f,'y');
m=numel(s);
n=numel(t);
num=numel(f);
if m==1 & n==1
ind1=findstr(f,'x')-1;
ind2=findstr(f,'y')-1;
ind3=ind2+2;
f1=f([1:ind1]);
f2=f([ind1+2:ind2]);
f3=f([ind3:num-2]);
disp('coeficientes:');
disp(['A=',f1,'  B=',f2,'  C=',f3]);
se='=0';
ecuacion=strcat(f1,'x',f2,'y',f3,se)
elseif m==1 & n==0
    ind1=findstr(f,'x')-1;
    ind2=ind1+2;
    f1=f([1:ind1]);
    f2=f(ind2:num-2);
    disp('coeficientes:');
    disp(['A=',f1,'  C=',f2]);
    se='=0';
    ecuacion=strcat(f1,'x',f2,se)
elseif m==0 & n==1
    ind1=findstr(f,'y')-1;
    ind2=ind1+2;
    f1=f([1:ind1]);
    f2=f(ind2:num-2);
    disp('coeficientes:');
    disp(['B=',f1,'  C=',f2]);
    se='=0';
    ecuacion=strcat(f1,'y',f2,se)
elseif m==0 & n==0
    disp('No hay ecuaci�n en x,y')
end
    
    
    
    
    
    