clc
clear 
x = linspace(0,1);
plot(x,x.^2,'r+');
hold on
plot(x,sin(x),'g.');
plot(x,exp(x),'m*');
legend('x^2','sin(x)','exp(x)');
