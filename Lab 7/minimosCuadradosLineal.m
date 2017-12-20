% Solucion del problema de minimos cuadrados con la factorizacion QR.
function [x] = MinimosCuadradosLineal(A, b)
    % Suponer que el rango de la matriz A es el numero de columnas.
    % Obtener las dimensiones de la matriz A.
    [m,n]=size(A);
    % Obtener la factorizacion QR de A.
    [Q,R]=qr(A);
    % Calcular R tilde.
    Rt=R(1:n,1:n);
    % Calcular la matriz Q'b.
    u=Q'*b;
    % Tomar las primeras n componentes de u.
    w=u(1:n);
    x=inv(Rt)*w;
end