clc
clear 
syms x % Declaring the parameters as a symbolic object
f=sin(2*x)+cos(3*x)
figure(1)
ezplot(f)
figure(2)
ezplot(f,[0,3])
