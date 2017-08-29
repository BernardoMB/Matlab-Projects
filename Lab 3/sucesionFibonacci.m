function [y] = Fibonacci (n)
    b1 = 1; b2=1;
    for i = 3:n;
        temp = b2;
        b2 = b1 + b2;
        b1 = temp;
    end
    y = b2;
end 