%Dada una entrada de tres valores enteros con formato de dia mes y a�o
%imprimir el dia, el nombre del mes y el a�o, ademas calcular cuantos dias
%han transcurrido desde que inicia el a�o hasta el dia introducido.
%Ejemplo de entrada:
%   5 3 1990
%
%Ejemplo de salida:
%
%15 de Marzo de 1990
%Han transcurrido 74 dias desde el inicio del a�o.
%
%Recuerde que si el a�o es bisiesto el mes de febrero tiene 29 dias, no 28.
%Un a�o es bisiesto si es dibisible entre 4, excepto si es dibisible entre
%100 en cuyo caso sera bisiesto solo si es dibisible entre 400.
clc;
%INTRODUCIR LOS VALORES DE DIA; MES Y A�O
dia=input('Introduzca el valor del dia:   ');
mes=input('Introduzca el valor del mes:   ');
anio=input('Introduzca el valor del a�o:  ');

%EVALUAR QUE MES ES EL QUE SE HA INTRODUCIDO
switch mes
    case 1
        month='Enero';
        yearday=dia;
    case 2
        month='Febrero';
        yearday=dia + 31;
    case 3
        month='Marzo';
        yearday=dia + 31 + 28;
    case 4
        month='Abril';
        yearday=dia + 31 + 28 + 31;
    case 5
        month='Mayo';
        yearday=dia + 31 + 28 + 31 + 30;
    case 6
        month='Junio';
        yearday=dia + 31 + 28 + 31 + 30 + 31;
    case 7
        month='Julio';
        yearday=dia + 31 + 28 + 31 + 30 + 31 + 30;
    case 8
        month='Agosto';
        yearday=dia + 31 + 28 + 31 + 30 + 31 + 30 + 31;
    case 9
        month='Septiembre';
        yearday=dia + 31 + 28 + 31 + 30 + 31 + 30 + 31 + 31;
    case 10
        month='Octubre';
        yearday=dia + 31 + 28 + 31 + 30 + 31 + 30 + 31 + 31 + 30;
    case 11
        month='Noviembre';
        yearday=dia + 31 + 28 + 31 + 30 + 31 + 30 + 31 + 31 + 30 + 31;
    case 12
        month='Diciembre';
        yearday=dia + 31 + 28 + 31 + 30 + 31 + 30 + 31 + 31 + 30 + 31 + 30;
end

%EVALUAR SI EL A�O ES BISIESTO
bis=0;
if (mod(anio,100)==0) & (mes > 2)
    bis=1;
else
    if (mod(anio,4)==0) & (mes > 2)
        bis=1;
    else
        bis=0;
    end
end

if bis==1
    yearday=yearday + 1;
end

%IMPRIMIR LOS VALORES
fprintf('\n%d de %s de %d\n',dia,month,anio);
fprintf('Han transcurrido %d dias desde el inicio del a�o.',yearday);