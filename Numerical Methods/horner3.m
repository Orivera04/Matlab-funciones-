
function [coc,rest,der]=horner3(p,pto)

% ************************************************
% Esta funci�n calcula el cociente y 
% y el resto obtenidos al dividir un polinomio 
% por (x-pto) usando el m�todo de 
% Horner. 
% El polinomio debe venir dado en forma vectorial.
%
% Las variables de entrada son:
% p: Polinomio [an,...,a1,a0]
% pto: Punto donde evaluamos
% Las variables de salida son: 
% coc : cociente [bn-1,...,b1,b0]
% rest: resto = p(pto)
% der: p'(pto)
% *************************************************

n=size(p,2)-1;
q(1)=p(1);
s(1)=q(1);
for k=2:n
    q(k)=p(k)+pto*q(k-1);
    s(k)=q(k)+pto*s(k-1);
end
q(n+1)=p(n+1)+pto*q(n);

coc=q(1:n)
rest=q(n+1)
der=s(n)