a=0; b=3*pi/2;

t=linspace(a,b,1000);
xp=zeros(1000,1);
yp=zeros(1000,1);
zp=zeros(1000,1);
xpp=zeros(1000,1);
ypp=zeros(1000,1);
zpp=zeros(1000,1);
Curvatura=zeros(1000,1);
h=1e-3;
for i=1:1000
    xp(i)=(x(t(i)+h)-x(t(i)-h))/(2*h);
    yp(i)=(y(t(i)+h)-y(t(i)-h))/(2*h);
    zp(i)=(z(t(i)+h)-z(t(i)-h))/(2*h);
    
    xpp(i)=(x(t(i)-h)-2*x(t(i))+x(t(i)+h))/(h*h);
    ypp(i)=(y(t(i)-h)-2*y(t(i))+y(t(i)+h))/(h*h);
    zpp(i)=(z(t(i)-h)-2*z(t(i))+z(t(i)+h))/(h*h);
    
    sigmap=[xp(i),yp(i),zp(i)];
    sigmapp=[xpp(i),ypp(i),zpp(i)];
    
    Curvatura(i)=(norm(sigmap)*norm(sigmapp))^2-(sigmap*sigmapp')^2;
    Curvatura(i)=sqrt(Curvatura(i))/norm(sigmap)^3;
end
[r,index]=max(Curvatura);
plot3(x(t),y(t),z(t),x(t(index)),y(t(index)),z(t(index)),'*');

function [w]=x(t)
w=cos(t);
end

function [w]=y(t)
w=sin(t)+cos(t);
end

function [w]=z(t)
w=sin(t).*cos(t);
end
