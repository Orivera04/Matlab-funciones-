function punto = intersegmentos(P,Q,R,S)
% intersegmentos retorna las intersecciones de dos
%segmentos PQ y RS, P,Q,R,S son puntos en 2D.
%edge1=createEdge(P,Q)
%edge2=createEdge(R,S)  
%   En caso de segmentos colineales, retorna [Inf Inf].
%   En caso de segmentos no colineales y paralelos, retorna [NaN NaN].
%   punto=[x0,y0] es el pto de intersecci�n de los segmentos
plot([P(1),Q(1)],[P(2),Q(2)]);hold on;plot([R(1),S(1)],[R(2),S(2)])
edge1=createEdge(P,Q);
edge2=createEdge(R,S);
N1=size(edge1,1);N2=size(edge2,1);% edge1 y edge2 son del mismo tama�o.
if N1~=N2
    if N1==1
        edge1 = repmat(edge1, [N2 1]);
        N1 = N2;
    elseif N2==1
        edge2 = repmat(edge2, [N1 1]);
    end
end
% tolerance for precision
tol = 1e-14;
% initialize result aray
x0 = zeros(N1, 1);y0 = zeros(N1, 1);
% indices of parallel lines
par = abs(edge1(:,3).*edge2(:,4) - edge2(:,3).*edge1(:,4))<tol;
% indices of colinear lines
% equivalent to : |(x2-x1)*dy1 - (y2-y1)*dx1| < eps
col=abs((edge2(:,1)-edge1(:,1)).*edge1(:,4)-(edge2(:,2)-edge1(:,2)).*edge1(:,3)) < tol & par ;            
x0(col) = Inf;y0(col) = Inf;x0(par & ~col) = NaN;y0(par & ~col) = NaN;

% process intersecting edges whose interecting lines intersect
i = ~par;
x1=edge1(i,1);y1=edge1(i,2);dx1=edge1(i,3)-x1;dy1 = edge1(i,4)-y1;
x2=edge2(i,1);y2=edge2(i,2);dx2=edge2(i,3)-x2;dy2 = edge2(i,4)-y2;

% compute intersection point
x0(i)=((y2-y1).*dx1.*dx2 + x1.*dy1.*dx2 - x2.*dy2.*dx1)./(dx2.*dy1-dx1.*dy2);
    
y0(i)=((x2-x1).*dy1.*dy2 + y1.*dx1.*dy2 - y2.*dx2.*dy1)./(dx1.*dy2-dx2.*dy1); 
    
% compute position on each edge
t1 = ((y0(i)-y1)*dy1 + (x0(i)-x1)*dx1) / (dx1.*dx1+dy1.*dy1);
t2 = ((y0(i)-y2)*dy2 + (x0(i)-x2)*dx2) / (dx2.*dx2+dy2.*dy2);

% check points 
out=t1<-tol|t1>1+tol|t2<-tol|t2>1+tol;x0(out) = NaN;y0(out) = NaN;

% output arguments
punto = [x0 y0];
if (x0~=NaN & y0~=NaN)|(x0~=Inf & y0~=Inf)
plot(x0,y0,'*r')
end




