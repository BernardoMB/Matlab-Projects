% La funcion F se especifica en el mismo archivo.
% Aqui el gradiente de F se aproxima con diferencias finitas.
% Tol=tolerancia. Probar con Tol=1e-4=1*10^(-4)
% Aproximacion de los puntos criticos de una funcion f:R^n->R
function[Indicador,r]=PuntosCriticos(x0,MaxNumInter,Tol)
Indicador=0; r=Inf;
for i=1:MaxNumInter
    x=x0-inv(Hessiana(x0))*Gradiente(x0);
    if norm(x-x0)/norm(x)<=Tol
        Indicador=1;
        r=x;
        break
    end
    x0=x;
end

% Funcion vectorial F.
% Un punto critico de esta funcion es (2,-1,-2)
function [y]=F(x)
y=-3*((x(1)-2)^2)+4*((x(2)+1)^2)-(x(3)+2)^2;

% Funcion gradiente.
function [y] = Gradiente(x)
h=eps^(1/3);
n=length(x);
y=zeros(n,1);
for i=1:n
    ei=zeros(n,1); 
    ei(i)=1;
    y(i)=(F(x+h*ei)-F(x-h*ei))/(2*h);
end

% Matriz Hessiana.
function [w] = Hessiana(x)
h=eps^(1/4);
n=length(x);
w=zeros(n,n);
for i=1:n
    ei=zeros(n,1); ei(i)=1;
    for j=1:n
        ej=zeros(n,1); ej(j)=1;
        w(i,j)=(F(x+h*(ei+ej))-F(x+h*(ei-ej))-F(x+h*(ej-ei))+F(x-h*(ei+ej)))/(4*h^2);
    end
end