clc;
% Vector field F = (3xz^3, 2x^2y, 5y^2z) plotted as 3D arrows
[x, y, z] = meshgrid(-1.5:1.5:1.5);
u= 3.*(z.^3).*x;
v= 2.*(x.^2).*y ;
w= 5.*(y.^2).*z;
quiver3(x, y, z, u, v, w);
colormap jet;
title('Vector Field (3xz^3,2x^2y,5y^2z)')
