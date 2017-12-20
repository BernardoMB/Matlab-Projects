% Aproximacion de la solucion del problema de valor inicial 
% y'(t)=f(t,y(t)), t en [t0,T] usando n pasos del metodo de Euler.
% La funcion f se especifica en el mismo archivo. El valor inicial es
% y(t0)=y0.
function [t,y]=RungeKutta(t0,T,n,y0)
t=linspace(t0, T, n+1);
h=(T-t0)/n;
y=zeros(1,n+1);
y(1)=y0;
for j=1:n
    k1=f(t(j),y(j));
    k2=f(t(j)+h/2,y(j)+k1*h/2);
    k3=f(t(j)+h/2,y(j)+k2*h/2);
    k4=f(t(j)+h,y(j)+k3*h);
    y(j+1)=y(j)+h/6*(k1+2*k2+2*k3+k4);
end

function [z]=f(t,y)
z=t*y;

% Despues de tener esto, correr los siguiente en la consola
%[t,y]=RungeKutta(0,1,100,1);
%plot(t,y,t,exp(t.^2/2))

% Observar que esto está mucho mas pegado que el metodo de Euler.

% Para comparar todos los valores correr lo siguiente
%[t,yE]=Euler(0,1,100,1);
%[t,yEM]=EulerModificado(0,1,100,1);
%[t,yRK]=RungeKutta(0,1,100,1);
%yE(101)
%yEM(101)
%yRK(101)

% Y comparar ocn el valor exacto
%exacto=exp(1/2)
