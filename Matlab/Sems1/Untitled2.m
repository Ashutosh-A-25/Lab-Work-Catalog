clc
clear
syms x;
f=x^2-5*x+6;
x=[1,2,3,4,5];
f=inline(vectorize(f));
f(x)
