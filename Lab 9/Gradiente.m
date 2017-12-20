function [y]=Gradiente(x)
h=eps^(1/3);
n=length(x);
y=zeros(n,n);
for j=1:n
    ej=zeros(n,1);
    ej(j)=1;
    y(:,j)=(F(x+h*ej)-F(x-h*ej))/(2*h);
end

function [y]=F(x1,x2,x3)
y=-3*(x1-2)^2+4*(x2+1)^2-(x3+2)^2;