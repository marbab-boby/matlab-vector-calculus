
a=1;
b=2;
k=1;
ep=(8.854).*(10.^-12);
r1= linspace(0,a,100);
r2= linspace(a,b,100);
r3= linspace(b,4,100);
A1=r1.*0;
A2=(k/ep).*(r2-a).*((r2.*r2).^-1);
A3=(k/ep).*(b-a).*((r3.*r3).^-1);

plot(r1, A1);
hold on;
plot(r2, A2);
hold on;
plot(r3, A3);
hold off;
legend('a>r','a<r<b','b<r');
xlabel('Distance (r)');
ylabel('Electric Field (E)');

