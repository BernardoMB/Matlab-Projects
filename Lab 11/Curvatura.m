% Interpolacion con splines cubicos tipo Not-a-Knot
% el vector x contiene las abscisas, el vector y contiene las ordenadas.
% Calcular el punto sobre la grafica del spline con mayor curvatura.
x=linspace(-2,2,11);
%y=1./(1+4*x.*x);
y=sin(x.*x);
t=linspace(min(x),max(x),1000);
s=spline(x,y,t);

Curvatura=zeros(1,998);
% Este metodo es sumamente tardado.
h=t(2)-t(1);
for i=2:999
    sp=(s(i+1)-s(i-1))/(2*h);
    spp=(s(i+1)-2*s(i)+s(i-1))/(h*h);
    Curvatura(i-1)=abs(spp)/(1+sp*sp)^(3/2);
end
[r,Indice]=max(Curvatura);
Indice=Indice+1;
plot(t,s,x,y,'o',t(Indice),s(Indice),'g*');
