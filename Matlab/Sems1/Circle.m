
clc
clear all
t = linspace(0,2*pi,20) ;
x = 3+2*cos(t);
y = 4+2*sin(t);
plot(x,y,'k-*')
axis equal
xlabel('x(m)')
ylabel('y(m)')
grid on
title('graph of (x-1)^2+(y-3)^2=4')
legend('(x-1)^2+(y-3)^2=4')


