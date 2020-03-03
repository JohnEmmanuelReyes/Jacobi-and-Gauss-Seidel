function [x,k] = Jacobi(A,b,epsilon)

x=[0];
y=[0];
z=[0];
i=0;
xf=0;
yf=0;
zf=0;
for k= 1:100
    x(k+1) = (1/A(1,1))*(b(1)-(A(1,2)*y(k))-(A(1,3)*z(k)))
    y(k+1) = (1/A(2,2))*(b(2)-(A(2,1)*x(k))-(A(2,3)*z(k)))
    z(k+1) = (1/A(3,3))*(b(3)-(A(3,1)*x(k))-(A(3,2)*y(k)))
    xe = abs(x(k+1)- x(k));
    ye = abs(y(k+1)- y(k));
    ze = abs(z(k+1)- z(k));
    i=i+1;
if xe <= epsilon && ye <= epsilon && ze <= epsilon;
    xf=x(k+1);
    yf=y(k+1);
    zf=z(k+1);
    break;
else
    continue;
end
end
fprintf('x= %f, y= %f, z= %d, iteration= %d',xf,yf,zf,i)

