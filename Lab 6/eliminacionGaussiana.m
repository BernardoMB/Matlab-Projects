% Funcion para llevar una matrix a la forma de la Eliminacion gaussiana.
% ENTRADA: A = Matriz invertible triangular superior
% ENTRADA: b = vector de  resultantes
% SALIDA: T = Matriz triangular superior.
% SALIDA: z = Vector de resultantes.
function [T, z] = eliminacionGaussiana(A,b)
    % Validando a la matriz A.
    [nrow, ncol] = size(A);
    if (nrow ~= ncol)
        disp('Error de eliminacion gaussiana: se requiere una matriz cuadrada');
        return;
    end
    % Validando al vector de resultantes b.
    nb = length(b);
    if(nrow ~= nb)
        disp('Error de eliminacion gaussiana: se requiere que el vector de resultantes tenga el mismo numero de renglones que A.')
        return;
    end
    % Eliminacion gaussiana.
    for i = 1 : nrow-1
        if (A(i,i) == 0)
            t = min(find(A(i+1:nrow,i) ~= 0 ) + i);
            if (isempty(t)) 
                disp ( 'Error de eliminacion gaussiana: A no puede ser una matriz singular.' );
                return;
            end
            % Intercambio de renglon.
            temp = A(i,:);
            A(i,:) = A(t,:);
            A(t,:) = temp;
            % Intercambio de entrada del vector resultante.
            tempb = b(i);
            b(i) = b(t);
            b(t) = tempb;
        end
        for j = i+1 : nrow
            A(j,i) = 0;
            A(j, i+1:nrow) = A(j, i+1:nrow) + A(i, i+1:nrow) * (-A(j,i) / A(i,i));
            b(j) = b(j) + b(i) * (-A(j,i) / A(i,i));
        end
    end
    T = A;
    z = b;
end