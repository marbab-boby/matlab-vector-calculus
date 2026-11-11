clc;
[x,y,z] = meshgrid(-1.5:0.8:1.5);
u = 10.*y.*z;
v = 9.*x.*z.^2;
w = 4.*x.*y;
quiver3(x, y, z, u, v, w)
title('curl of  (3xz^3,2x^2y,5y^2z)')
grid on