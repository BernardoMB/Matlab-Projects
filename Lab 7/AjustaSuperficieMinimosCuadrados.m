function [c] = AjustaSuperficieMinimosCuadrados(x,y,z)
    m=length(x);
    A=zeros(m,6);
    for i=1:m
        for j=3:2:5
            A(i,j)=y(i)^((j-1)/2);
        end
        for r=2:2:4
            A(i,r)=x(i)^(r/2);
        end
        A(i,1)=1;
        A(i,6)=x(i)*y(i);
    end
    c=MinimosCuadradosLineal(A,z);
    xx=linspace(min(x),max(x),200);
    yy=linspace(min(y),max(y),200);
    [xx,yy]=meshgrid(xx,yy);
    zz=c(1) +c(2)*xx +c(3)*yy +c(4)*xx.^2 +c(5)*yy.^2 +c(6)*xx.*yy;
    mesh(xx,yy,zz);
    hold on
    plot3(x,y,z,'*');
end