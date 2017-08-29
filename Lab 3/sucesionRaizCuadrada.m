function[y] = sucesionRaizCuadrada(a, n, x0)
    x1 = x0;
    for i = 1:n
        x1 = 1/2*(x1+a/x1);
    end
    y = x1;
end