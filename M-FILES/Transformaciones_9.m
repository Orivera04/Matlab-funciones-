% Transformaciones para cambio de posici�n o de forma
% de una figura en 2D
disp('Seleccione una transformaci�n de forma o posici�n:');
disp('1.Expansi�n a lo largo del eje x');
disp('2.Expansi�n a lo largo del eje y');
disp('3.Compresi�n a lo largo del eje x');
disp('4.Compresi�n a lo largo del eje y');
disp('5.Corte a lo largo del eje x');
disp('6.Corte a lo largo del eje y');
disp('7.Reflexi�n con respecto al eje x');
disp('8.Reflexi�n con respecto al eje y');
disp('9.Reflexi�n con respecto a la recta y=x');
n=input('Escriba el No. de la transformaci�n: ');
switch n
    case 1
        c=input('valor de c>1: ');
        while c<=1
           disp('c debe ser mayor que 1');
           c=input('valor de c>1: ');
        end
        MT= [c 0;0 1]
        X=trian;
        subplot(1,2,1);
        dot2dot(X); grid on
        title('Tri�ngulo original: b=5')
        axis([0 c*10+5 0 6])
        subplot(1,2,2);
        dot2dot(MT*X);grid on
        b=5*c;   
        title(['Expansi�n a lo largo de x: b=',num2str(b)]);
        axis([0 c*10+5 0 6])
    case 2
        c=input('valor de c>1: ');
        while c<=1
           disp('c debe ser mayor que 1'); 
           c=input('valor de c>1: ');
        end
        MT = [1,0;0,c]
        X=trian;
        subplot(1,2,1);
        dot2dot(X);grid on;
        title('Tri�ngulo original: h=3')
        axis([0 6 0 3*c+3])
        subplot(1,2,2);
        dot2dot(MT*X);grid on;
        b=3*c; 
        title(['Expansi�n a lo largo de y: h=',num2str(b)]);
        axis([0 6 0 3*c+3])
    case 3
        c = input('valor de c(0<c<1): ');
        while c>=1 | c<=0
           disp('c debe estar entre 0 y 1');
           c=input('valor de c<1: ');
        end
        MT = [c,0;0,1]
        X=trian;
        subplot(1,2,1);
        dot2dot(X); grid on;
        title('Tri�ngulo original: b=5')
        axis([0 c*10+5 0 6])
        subplot(1,2,2);
        dot2dot(MT*X);grid on
        b=5*c;
        title(['Compresi�n a lo largo de x: b=',num2str(b)]);
        axis([0 c*10+5 0 6])
    case 4
        c=input('valor de c(0<c<1): ');
        while c>=1 | c<=0
           disp('c debe estar entre 0 y 1');
           c=input('valor de c>1: ');
        end
        MT = [1,0;0,c]
        X=trian;
        subplot(1,2,1);
        dot2dot(X);grid on;
        title('Tri�ngulo original: h=3')
        axis([0 6 0 3*c+3])
        subplot(1,2,2);
        dot2dot(MT*X);grid on;
        b=3*c; 
        title(['Compresi�n a lo largo de y h=',num2str(b)]);
        axis([0 6 0 3*c+3])
    case 5
        dot2dot(cuadri);
        axis([0 10 0 10])
        hold on;
        p=cuadri;
        c= input('valor de c: ');
        MT=[1 c;0 1]
        matcor=MT*p
        dot2dot1(matcor);
        axis([0 10 0 10]);
        title('Corte a lo largo del eje x');
    case 6
        dot2dot(cuadri);
        axis([0 10 0 10])
        hold on;
        p=cuadri;
        c= input('valor de c: ');
        MT=[1 0;c 1]
        matcor=MT*p
        dot2dot1(matcor);
        axis([0 10 0 10]);
        title('Corte a lo largo del eje y');
    case 7
        dot2dot(poli);
        axis([0 5 -5 5])
        hold on;
        plot([0 5],[0 0],'k');
        p=poli;
        MT=[1 0;0 -1]
        matcor=MT*p
        dot2dot(matcor);
        axis([0 5 -5 5]);
        title('Reflexi�n con respecto al eje x')
    case 8
        dot2dot(poli2);
        axis([-5 5 0 5])
        hold on;
        plot([0 0],[0 5],'k');
        p=poli2;
        MT=[-1 0;0 1]
        matcor=MT*p
        dot2dot(matcor);
        axis([-5 5 0 5]);
        title('Reflexi�n con respecto al eje y');
    case 9
        dot2dot(trian2);
        axis([-1 10 -1 10])
        hold on;
        plot([0 10],[0 10],'k');
        p=trian2;
        MT=[0 1;1 0]
        matcor=MT*p
        dot2dot(matcor);
        axis([-1 10 -1 10]);
        title('Reflexi�n con respecto a la recta y=x')
end