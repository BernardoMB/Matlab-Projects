% Interpolacion con splines cubicos tipo Not-a-Knot
% el vector x contiene las abscisas, el vector y contiene las ordenadas
x=linspace(-2,2,11);
y=sin(x);
t=linspace(min(x),max(x),1000);
% Las condiciones del Not-a-Knot son que la funciones sean de clase C3.
% Se utilizara una funcion built-in.
s=spline(x,y,t);
plot(t,s,x,y,'o');
% Para ver que tan bueno es el polinomio interpolante, vamos a pintar la
% funcion seno encima de la misma grafica.
plot(t,s,x,y,'o',t,sin(t));

% Otro ejemplo
x=linspace(-2,2,11);
y=1./(1+4*x.*x);
t=linspace(min(x),max(x),1000);
% Las condiciones del Not-a-Knot son que la funciones sean de clase C3.
% Se utilizara una funcion built-in.
s=spline(x,y,t);
plot(t,s,x,y,'o');
% Para ver que tan bueno es el polinomio interpolante, vamos a pintar la
% funcion seno encima de la misma grafica.
plot(t,s,x,y,'o',t,1./(1+4*t.*t));
