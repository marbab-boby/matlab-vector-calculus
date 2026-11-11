close all; clc;

[x,y] = meshgrid(-1:1:10, -1:1:10);
z = (5.*(x.^2).*y) - (5.*x.*(y.^2));
a = contour(x,y,z);

xlabel ('X-axis');
ylabel ('Y-axis');
set(gca,'FontSize',12 );
set(gca,'FontWeight','Bold');
colormap jet;

 
surf(z)
title('Scalar Field 5x^2y - 5xy^2')
