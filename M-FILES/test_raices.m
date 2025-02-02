%Programa para determinar si las raices encontradas de un polinomio 
%son exactas.

p=input('Introducir los coeficientes del polinomio: ')
%Calcular las raices del polinomio usando el comando roots.
r_aprox=roots(p)
k=numel(r_aprox);
real_aprox=r_aprox(imag(r_aprox)==0);
m=numel(real_aprox);
imag_aprox=r_aprox(imag(r_aprox)~=0);
n=numel(imag_aprox);
%Verificar Si las raices reales son exactas o aproximadas
tol1=input('Introducir el grado de error de las ra�ces: ');
absim=abs(imag(r_aprox));
f_c=find(absim<=tol1);
v_c=find(absim>tol1);
raices1=real(r_aprox(f_c));
if numel(raices1)==k
    disp('Todas las ra�ces son reales:');
    raices=raices1
    break
end
raices1
if (polyval(p,real_aprox)<tol1) 
    disp('Las ra�ces reales son exactas o aproximadas');
    raices_reales1=real_aprox
else
    disp('Roots no encontr� ra�ces reales')
end
%Verificar Si las raices complejas son exactas o aproximadas
tol2=input('\Introducir el grado de error en la parte imaginaria: ');
if imag(r_aprox)<tol2 
    fprintf('\nLas raices encontradas no son complejas\n');
    disp('');
    fprintf('\nNuevas raices reales : \n');
    raices_reales2=real(imag_aprox)
else
    fprintf('\nLas raices complejas son exactas o aproximadas\n');
    raices_complejas=r_aprox(v_c)
end
   