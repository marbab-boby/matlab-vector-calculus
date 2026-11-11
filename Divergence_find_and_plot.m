clc;
syms x y z
V = [3.*(z.^3).*x,2.*(x.^2).*y,5.*(y.^2).*z];
X =[x y z];
 divergence(V,X)
 [x,y,z] = meshgrid(-1.5:0.8:1.5);
u = 3.*z.^3;
v = 2.*x.^2;
w = 5.*y.^2;
quiver3(x, y, z, u, v, w)
title('divergence of  (3xz^3,2x^2y,5y^2z)')
grid on