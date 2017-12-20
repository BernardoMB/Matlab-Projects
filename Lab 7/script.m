% Solucion del problema de minimos cuadrados con la factorizacion QR.

% Sea A una matriz de tamaño 5x3.
A = [ 1, -1,  3; 
      3,  1,  4;
      1,  2,  3;
     -1, -2, -5;
      4,  3,  1];

% Obtener la factorizacion QR.
[Q,R]=qr(A);

% Para confirmar que Q es una matriz ortogonal, hay que multiplicar Q por
% su transpuesta y verificar que se obtiene la matriz identidad.
Q*Q'

% Observar que la R es una matriz triangular superior.
R

% Sea ahora el siguiente conjunto de puntos en R2.
%x=[-2,-1.5,-1,-.5,-.2,.5,1,1.7,2,2.2,2.4,3,4,4.5,5];
%y=[1,2,1,1.6,.7,.8,1.5,1.7,1.3,2.5,2.1,3.2,3.5,3,2.7];
% Ajustar una curva al conjunto de puntos mediante el metodo de minimos
% cuadrados.
%[z]=AjustaPolinomioMinimosCuadrados(x,y',10);

% Sea ahora el siguiente conjunto de puntos en R2.
x=linspace(-1,2,300);
y=sin(x.*x);
y=y+unifrnd(-0.05,0.05,1,300);
% Linea.
plot(x,y);
[z]=AjustaPolinomioMinimosCuadrados(x,y',5);

% Ahora se ajustara una curva.
x=[-9,-0.3,0.5,0.9,0.2,0.7,0.4,0.9,-0.2,-0.8,-0.8]';
y=[0.9,0.6,0.8,0.8,0.2,0.3,-0.8,-0.9,-0.2,-0.3,-0.9]';
z=[1,0.7,-0.4,-0.6,-0.5,-0.7,1,0.7,-0.2,-0.5,-0.7]';
AjustaSuperficieMinimosCuadrados(x,y,z);
