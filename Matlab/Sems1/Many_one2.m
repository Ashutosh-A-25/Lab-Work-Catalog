clc
clear 
x = linspace(0,1)
plot(x,x.^3,'r+',x,sin(x),'k-',x,exp(x),'g.')
legend('x^3','sin(x)','exp(x)')
