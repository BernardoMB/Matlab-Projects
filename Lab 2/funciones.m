function [d, z] = funciones(A, b, p)   
    d = det(A);
    z = (A.^p)*b;
end

