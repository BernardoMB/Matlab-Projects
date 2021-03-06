% Los comentarios se ponen con la tecla "%".

% Declarar e inicilizar una variable.
a = 4.51;

% Llamar la funcion seno.
sin(a);

% Si queremos que la consola vaya imprimiendo lo que se hizo, entonces no
% poner el ";" al final del enunciado.
exp(a)

% Calculando raiz cuadrada. 
b = sqrt(4)

% Imprimiendo a la consola en formato long.
format long
b

% Imprimiendo a la consola en formato corto.
format short
b

% Jugando.
format long

% No lo alcanza a ver.
n = 10^16;
1 + 1/n

% Si lo alcanza a ver.
n = 10^15; 
1 + 1/n

% Not a Number result.
0/0

% Infinity is 
1/Inf

% Creando una matriz
c = [1,2,3;4,5,6;7,8,9]

% Calculando la inversa
inv(c)

% Calculando la transpuesta
cTrans = c'

% Obteniendo la matriz identidad
c * cTrans * inv(c * cTrans)

% Mejor obtener la matriz identidad del siguiente modo.
I = eye(3,3)

% Multiplicar matrices entrada por entrada.
cSquared = c.*c

% Sumando matrices
cDoubled = c + c

% Define a 3x5 matrix
w = [2,-1,1,4,3;2,1,3,0,2;1,2,3,4,5]
% Define a new 8x8 empty matrix
m = zeros(8,7)
% Copy all values of w into m
%w(1:1,1:1) = m

% Define a new vector
v = [-2,1,0,4,1,2,3,4,5,6]
w(3:8,6)=v(5:10)

% Save matrix to a file
save MatrixDatos w -ascii

