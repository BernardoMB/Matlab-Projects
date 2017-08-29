% Se calcula la regla del trapecio con n subintervalos de [a, b].
% La funcion f a integrar en [a, b] se especifica en este archivo.
function[y] = reglaDelTrapecio(a, b, n)
    h = (b - a) / n;
    s = 0; % va acumulado la suma.
    for i = 1 : n-1
        x = a + i*h;
        s = s + f(x);
    end
    y = f(a)+f(b)*h/2+h*s
end

% Especificar la funcion a integrar.
function[y] = f(x)
    y = sin(x);
end