%Matriz de rutas para un grafo G.
%MSR Matriz de sub_rutas con k v�rtices
clear;
clc;
N=8;
grafplot5;
k=1;
e
ME
rutas=cell(N-2,1);
%MSRA =[1 2; 1 3] sub_rutas con 2 v�rtices
MSRA=mat_ini;
ruta_1N=borraFCNU(mat_ini,N);
L=size(ruta_1N,1);
m=size(MSRA,1);
while k<=N-2%m<=N-1
MSR=[];
for i=1:m
  MSR=[MSR;matrep(ME,MSRA,e,i)];
end
MSR=borraFCER(MSR);
MSRA=MSR;
rutas{k}=borraFSNU(MSR,N);
numrutas(k)=size(rutas{k},1);
k=k+1;
m=size(MSR,1);
end
disp('Matrices de rutas del grafo:');
ruta_1N
celldisp(rutas)
Numero_de_rutas=sum(numrutas)+L
