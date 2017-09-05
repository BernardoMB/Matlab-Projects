% Regla de Simpson para aproximar la integral de f en [a,b]
% La funcion f se especifica en este archivo.
function y = simpson(a,b,n)
h=(b-a)/n;


    a1 = 0;
    for j=1:2:n-1
        a1=a1+f(a+j*h);
    end
    a2 = 0;
    for j=2:2:n-2
        a2=a2+f(a+j*h);
    end

y=h/3*(f(a)+f(b))+(((4*h)/3)*a1)+((2*(h/3))*(a2));

% Especificar f
function [y]=f(x)
y=1/x;

      