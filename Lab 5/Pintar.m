% Pintael conjunto D={(x,y|1/2<=x*x+y*y<=1)} interseccion D={(x,y|x*x-y*y<=1)}
m=1000000;
x=unifrnd(-1,1,m,1);
y=unifrnd(-1,1,m,1);
j=0; % Cuenta cuantos puntos tenemos dentro de la region D.
for i=1:m
    r=x(i)^2+y(i)^2;
    if r<=1 && r>=1/2 && x(i)^2-y(i)^2<=1/3
       j=j+1;
       Coorx(j)=x(i);
       Coory(j)=y(i);
    end
end
plot(Coorx(1:j),Coory(1:j),'.');
AreaAprox = j/m*4 % 4 es el area del rectángulo.

% Pintar el conjunto D={(x,y,z)|x*x+y*y+z*z<=1)} interseccion D={(x,y,z)|x+y+z<=1/3)}
m2=1000000;
x2=unifrnd(-1,1,m,1);
y2=unifrnd(-1,1,m,1);
z2=unifrnd(-1,1,m,1);
j2=0; % Cuenta cuantos puntos tenemos dentro de la region D.
for i=1:m2
    r=x2(i)^2+y2(i)^2+z2(i)^2;
    if r<=1 && x2(i)+y2(i)+z2(i)<=1/3
       j2=j2+1;
       Coorx2(j2)=x2(i);
       Coory2(j2)=y2(i);
       Coorz2(j2)=z2(i);
    end
end
plot3(Coorx2(1:j2),Coory2(1:j2),Coorz2(1:j2),'.');
AreaAprox2 = j2/m2*8

% Ejercicio (1) en las notas escritas a mano del laboratorio.
m3=1000000;
x3=unifrnd(0,1,m,1);
y3=unifrnd(0,1,m,1);
j3=0;
for i=1:m3
    if x3(i)*x3(i)<=y3(i) && y3(i)<=x3(i)
       j3=j3+1;
       Coorx3(j3)=x3(i);
       Coory3(j3)=y3(i);
    end
end
plot(Coorx3(1:j3),Coory3(1:j3),'.');
sum = 0;
for k=1:j3
    sum = sum + Coorx3(k)*exp(Coory3(k));
end 
AreaAprox3 = (sum/m)

% Ejercicio (2) Escrito en las notas escritas a mano del laboratorio.
m4=1000000;
x4=unifrnd(-1,1,m,1);
y4=unifrnd(-1,1,m,1);
z4=unifrnd(-1,1,m,1);
w4=unifrnd(-1,1,m,1);
j4=0;
for i=1:m4
    if x4(i)^2 + y4(i)^2 + z4(i)^2 + w4(i)^2 <= 1
       j4=j4+1;
       Coorx4(j4)=x4(i);
       Coory4(j4)=y4(i);
       Coorz4(j4)=z4(i);
       Coorw4(j4)=w4(i);
    end
end
AreaAprox4 = (j4/m4)*16