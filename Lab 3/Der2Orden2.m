function[y]=Der2Orden4(a,h)
y=(8(Der1Orden2(a+h,h)-Der1Orden2(a-h,h))-(Der1Orden2(a+2*h,h)-Der1Orden2(a-2*h,h)))/(12*h);

function[y]=f(x)
y=x*exp(x);