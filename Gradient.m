clc;
% Gradient of the scalar function f = sin(2x) + cos(2x) - y
syms x y z real
f = sin(2*x) + cos(2*x) - y;
v = [x y z];
g = gradient(f, v);
display(g);
