clc
clear all
x=0:0.1:2*pi;
subplot(2,2,1)
plot(x,sin(x));
subplot(2,2,2)
plot(x,cos(x),'r-*');
subplot(2,2,3)
plot(x,exp(-x),'go')
subplot(2,2,4);
plot(x,sin(3*x),'ms')
