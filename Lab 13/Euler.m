% Aproximacion de la solucion del problema de valor inicial 
% y'(t)=f(t,y(t)), t en [t0,T] usando n pasos del metodo de Euler.
% La funcion f se especifica en el mismo archivo. El valor inicial es
% y(t0)=y0.
function [t,y]=Euler(t0,T,n,y0)
t=linspace(t0, T, n+1);
h=(T-t0)/n;
y=zeros(1,n+1);
y(1)=y0;
for j=1:n
    y(j+1)=y(j)+h*f(t(j),y(j));
end

function [z]=f(t,y)
z=t*y;

% Despues de tener esto, correr los siguiente en la consola
%[t,y]=Euler(0,1,100,1);
%plot(t,y,t,exp(t.^2/2))