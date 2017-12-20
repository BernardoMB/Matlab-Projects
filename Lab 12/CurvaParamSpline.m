% Interpolacion con curvas parametricas usando splines cubicos
% Dados m puntos en el plano.
% Encontrar una curva en el plano que pase por esos puntos en el orden dado
% y que la curva sea de clase C2.
% Se encontrara una curva parametrica de clase C2
w=linspace(0,4.5,10);
x=sin(w);
y=cos(w);
x(11)=0; y(11)=0;
plot(x,y,'O')
m=length(x);
t=linspace(0,1,m);
tt=linspace(0,1,1000);
Sx=spline(t,x,tt);
Sy=spline(t,y,tt);
plot(Sx,Sy,x,y,'o')
% Escribir los siguiente en la linea de comando
% axis([-2,3,1,2])
% [coorx,coory,b]=ginput(1)

% Los puntos se especifican con el boton
axis([-2,2,-2,2]);
contador=0;
boton=1;
while (boton==1) 
    [coorx(contador+1),coory(contador+1),boton]=ginput(1);
    contador=contador+1;
    plot(coorx(1:contador),coory(1:contador),'o')
    axis([-2,2,-2,2]);
end
m=contador;
t=linspace(0,1,m);
tt=linspace(0,1,1000);
Sx=spline(t,coorx(1:m),tt);
Sy=spline(t,coory(1:m),tt);
hold on
plot(Sx,Sy,'o')
axis([-2,2,-2,2]);