%Matrices de rutas para el grafo G8
%v1=[2,3]; v2=[3,4]; v3=[2,4,6]; v4=[5,6,7];
%v5=[4,6,7]; v6=[4,5,7,8]; v7=[4,5,6,8];
clear;
clc;
MR =[2     3     0     0
     3     4     0     0
     2     4     6     0
     5     6     7     0
     4     6     7     0
     4     5     7     8
     4     5     6     8];
 
e =[2     2     3     3     3     4     4];

MR2 =[1 2; 1 3] % sub_rutas con 2 v�rtices

[m,n]=size(MR2);
MR3=[];
for i=1:m
    MR3=[MR3;matrep(MR,MR2,e,i)];
end
MR3 % sub_rutas con 3 v�rtices
[m,n]=size(MR3);
MR4=[];
for i=1:m
MR4=[MR4;matrep(MR,MR3,e,i)];
end 
MR4=borraFCER(MR4);
MR4 % sub_rutas con 4 v�rtices
[m,n]=size(MR4);
L1=[MR4(m,:)];
MR5=[];
for i=1:m-1
  MR5=[MR5;matrep(MR,MR4,e,i)];
end
[MR5,L2]=mat_rutas(MR5,8)
MR5=borraFCER(MR5);
MR5 %sub_rutas con 5 v�rtices
[m,n]=size(MR5);
MR6=[];
for i=1:m-1
  MR6=[MR6;matrep(MR,MR5,e,i)];
end
[MR6,L3]=mat_rutas(MR6,8)
MR6=borraFCER(MR6);
MR6 %sub_rutas con 6 v�rtices
[m,n]=size(MR6);
MR7=[];
for i=1:m-1
  MR7=[MR7;matrep(MR,MR6,e,i)];
end
[MR7,L4]=mat_rutas(MR7,8)
MR7=borraFCER(MR7);
MR7=borraFSNU(MR7,7);
MR7 %sub_rutas con 7 v�rtices
[m,n]=size(MR7);
A=8*ones(m,1);
L5=[MR7,A];
L5(3,:)=[1 2 3 4 5 6 7 8];
disp('Las matrices de rutas para G8 son:')
L1,L2,L3,L4,L5
[m1,n1]=size(L1);[m2,n2]=size(L2);[m3,n3]=size(L3);[m4,n4]=size(L4);[m5,n5]=size(L5);
disp('El No total de rutas desde v1 a v8 son:')
No_rutas=m1+m2+m3+m4+m5

  
