% GRAFICAS DE FUNCIONES

% Escribir en un archivo.
diary Lab2

% Definir x y 'y'
x = linspace(-1, 1, 1000);
y = x.*exp(-x.^2) + 1 -x./(4 + x.^2);

% Pintarlo
plot(x, y);

% Pintarlo de un color diferente
plot(x, y, 'r');

% Pintarlo de color diferente y con rayas
plot(x, y, 'r--');

% Otra funcion
y2 = sin(x.^2) + 0.3;
plot(x, y2);

% Grafico multiple
plot(x, y, x, y2);
grid

% Se puede inspeccionar la grafica con la lupa.

% GRAFICAS PARAMETRICAS

t = linspace(0, 2*pi, 1000);
x = cos(t);
y = 2*sin(t);
plot(x, y); % Elipse
axis square
axis equal

% Espiral cagado
t = linspace(0, 80*pi, 1000);
x = cos(t)./(1+t);
y = sin(t)./(1+t);
plot(x, y); % Elipse
axis square
axis equal

% Espiral cagado enroolandose mas rapido
t = linspace(0, 80*pi, 1000);
x = cos(t)./exp(t);
y = sin(t)./exp(t);
plot(x, y); % Elipse
axis square
axis equal

% Otra grafica cagada
t = linspace(0, 80*pi, 1000);
x = cos(t);
y = sin(t);
z = t/10;
plot3(x, y, z); % Elipse

% Otra grafica en 3D
t = linspace(0, 80*pi, 1000);
x2 = 1/2 + t;
y2 = -1/3 - t;
z2 = 1/4 - t;
plot3(x2, y2, z2); % Elipse

% Ahora pintando las ultimas dos graficas juntas,
plot3(x,y,z,x2,y2,z2);

% GRAFICAS DE SUPERFICIES

% Primero hay que crear el mayado creando una particion
a = -2;
b = 2;
c = -2;
d = 2;
x = linspace(a, b, 100); % particion 1
y = linspace(c, d, 100); % particion 2
% Guardar en 'x' y en 'y' el conjunto de las absisas y ordenadas del mayado.
[x, y] = meshgrid(x, y);
z = x.^2 - y.^2;
%mesh(x, y, z)

% En lugar de mesh llamar a surf y hacer interpolacion
surf(x, y, z);
shading interp
