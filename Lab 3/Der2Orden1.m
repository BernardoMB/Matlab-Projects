%Aproximación de segundas derivadas de f usando diferencias finitaas hacia
%adelante y de orden 1
function[y]=Der2Orden1(a,h)
y=(Der1Orden1(a+h,h)-Der1Orden1(a,h))/h;
