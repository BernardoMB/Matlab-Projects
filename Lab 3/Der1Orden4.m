function[y]=Der1Orden4(a,h)
y=(8*(f(a+h)-f(a-h))-(f(a+2*h)-f(a-2*h)))/(12*h);

function[y]=f(x)
y=x*exp(x);