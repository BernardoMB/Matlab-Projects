function[y]=Der1Orden2(a,h)
y=(f(a+h)-f(a-h))/(2*h);

function[y]=f(x)
y=x*exp(x);