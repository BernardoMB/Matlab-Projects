% Metodo de Newton en dimension n para aproximar
% una solucion del sistema F(x)=0.
% F se especifica en este archivo. F' se aproxima con
% diferencias finitas.
% x0 es un valor semilla y es un vector de dos entradas.
function [Indicador,r] = MetodoNewton_n(x0, MaxNumIter, Tol)
Indicador = 0; 
r=Inf;
for i=1:MaxNumIter
    x=x0-inv(Fp(x0))*F(x0);
    if norm(x-x0)/norm(x)<=Tol
        Indicador=1;
        r=x;
        break
    end
    x0=x;
end

% Funcion vectorial del sistema.
% x es un vector de dos entradas.
function [y]=F(x)
n=length(x);
y=zeros(n,1);
% Funcion 1 del sistema.
y(1)=exp(x(1)-x(2)^2)+x(1)^2-x(2)-3;
% Funcion 2 del sistema.
y(2)=sin(x(1)+x(2))+x(1)*x(2)+1;

% Matriz Hessiana.
function [y]=Fp(x)
h=eps^(1/3);
n=length(x);
y=zeros(n,n);
for j=1:n
    ej=zeros(n,1);
    ej(j)=1;
    % omonopineme es un vector de dos entradas
    omonopineme=(F(x+h*ej)-F(x-h*ej))/(2*h);
    % j-esima columna de la matriz hessiana
    y(:,j)=omonopineme;
end
