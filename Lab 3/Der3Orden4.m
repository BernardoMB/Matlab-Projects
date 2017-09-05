%Aproximación de f'''(a) usando orden 1 y orden 4 (por separado)
function[y]=Der3orden4(a,h)
y=(8(Der2Orden4(a+h,h)-Der2Orden4(a+2*h,h))-Der2Orden4(a+2*h,h)-Der2Orden4(a-2*h,h))/(12*h);