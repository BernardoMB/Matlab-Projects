% Ajusta polinomio de grado <+ n a m puntos (x(1),y(1)),...,(x(m),y(m)) en
% el sentido de minimos cuadrados.
function [z] = AjustaPolinomioMinimosCuadrados(x,y,n)
    % Obtener la longiud del vector x.
    m = length(x);
    % Inizializar la matriz A.
    A = zeros(m, n+1);
    for i=1:m
        for j=1:n+1
            A(i,j)=x(i)^(j-1);
        end
    end
    % y debe ser columna.
    z=MinimosCuadradosLineal(A,y);
    
    % Ahora pintar los puntos y el polinomio.
    xmin=min(x);
    xmax=max(x);
    % Construir una particion del intervalo.
    t=linspace(xmin,xmax,1000);
    s=z(1)*ones(1,1000);
    for k=1:n
        s=s+z(k+1)*t.^k;
    end
    plot(x,y,'o',t,s)
end