%Programa que simula el movimiento browniano.
%Diga cu�ntos cuadros va a usar. 
ncuadros = 50; n=50; s=0.1
%A continuaci�n, establezca la primera gr�fica como la anterior, excepto 
%por el uso deEraseMode (Normal)
x = rand(n,1)-0.5;
y = rand(n,1)-0.5;
h = plot(x,y,'.');
set(h,'MarkerSize',18);
axis([-1 1 -1 1])
axis square
axis off
grid off
%Genere la pel�cula y use "getframe" para capturar cada cuadro. 
for k = 1:ncuadros
   x = x + s*randn(n,1);
   y = y + s*randn(n,1);
   set(h,'XData',x,'YData',y)
   M(k) = getframe;
end
%Finalmente, corra la pel�cula 30 veces. 
movie(M,30)