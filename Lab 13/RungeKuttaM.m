% Aproximacion de la solucion del problema de valor inicial en dimension m
% Y'(t)=F(t,Y(t)), t en [t0,T] usando n pasos del metodo de Runge Kutta.
% La funcion F se especifica en el mismo archivo. El valor inicial es
% Y(t0)=Y0 con Y0 un vector columna.
function [t,W]=RungeKuttaM(t0,T,n,Y0)
t=linspace(t0, T, n+1);
h=(T-t0)/n;
m=length(Y0);
W=zeros(m,n+1);
W(:,1)=Y0;
% Llenar las columans de la matriz w.
for j=1:n
    k1=F(t(j),W(:,j));
    k2=F(t(j)+h/2,W(:,j)+k1*h/2);
    k3=F(t(j)+h/2,W(:,j)+k2*h/2);
    k4=F(t(j)+h,W(:,j)+k3*h);
    W(:,j+1)=W(:,j)+h/6*(k1+2*k2+2*k3+k4);
end

% El vecto rY de entrada tiene 2 componentes y el vector z de salida
% tambien.
function [z]=F(t,Y)
m=length(Y);
z=zeros(m,1);
z(1)=Y(1)-Y(2)^2+1;
z(2)=Y(1)*Y(2)-t;

% Despues de tener esto, correr lo siguiente en la consola
%[t,yRK]=RungeKuttaM(0,1,100,[1,-1/2]');
%plot(yRK(1,:),yRK(2,:))
