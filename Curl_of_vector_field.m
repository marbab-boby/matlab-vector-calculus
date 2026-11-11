clc;
syms x y z
V = [3.*(z.^3).*x,2.*(x.^2).*y,5.*(y.^2).*z];
X =[x y z];
 curl(V,X)
