function Xb = inter_ejex(fun,xmin,xmax,nx)
% inter_ejex  Encuentra subintervalos donde f(x) cambia de signo.
%
% Sinopsis:  Xb = inter_ejex(fun,xmin,xmax)
%            Xb = inter_ejex(fun,xmin,xmax,nx)
%
% Input:     fun = nombre de la funci�n a evaluar. Se puede usar inline.
%            [xmin,xmax] = intervalo donde se analixa f)x).
%            nx = (opcional) No. de subintervalos en que se divide [xmin,xmax]
%
% Output:    Xb = matrix de limites de subintervalos donde f cambia de
%                 signo.

if nargin<4, nx=20; end

% --- Create data for a plot of f(x) on interval xmin <= x <= xmax
xp = linspace(xmin,xmax);  yp = feval(fun,xp);
% --- Save data used to draw boxes that indicate brackets
ytop = max(yp);  ybot = min(yp);         %  y coordinates of the box
ybox = 0.05*[ybot ytop ytop ybot ybot];  %  around a bracket
c = [0.7 0.7 0.7];                       %  RGB color used to fill the box

% --- Begin search for brackets
x = linspace(xmin,xmax,nx);    %  Vector of potential bracket limits
f = feval(fun,x);              %  Vector of f(x) values at potential brackets
nb = 0;  Xb = [];              %  Xb is null unless brackets are found
for k = 1:length(f)-1
  if sign(f(k))~=sign(f(k+1))  %  True if sign of f(x) changes in the interval
    nb = nb + 1;
    Xb(nb,:) = [x(k) x(k+1)];  %  Save left and right ends of the bracket
    hold on;  fill([x(k) x(k) x(k+1) x(k+1) x(k)],ybox,c); %  Add filled box
  end
end
if isempty(Xb)   %  Free advice
 warning('No brackets found.  Check [xmin,xmax] or increase nx');
 return;         % return without drawing a plot
end
% --- Add plot here so that curve is on top of boxes used to indicate brackets
plot(xp,yp,[xmin xmax],[0 0]);
grid on;  xlabel('x');
if isa(fun,'inline')
  ylabel(sprintf('Roots of f(x) = %s',formula(fun)));  %  label is formul in f(x)
else
  ylabel(sprintf('Roots of f(x) defined in %s',fun));  %  label is name of m-file
end
hold off
