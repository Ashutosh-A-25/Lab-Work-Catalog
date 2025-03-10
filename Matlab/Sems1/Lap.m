% Example 1: Find the Laplace transform of the following functions.
 
% (i) L[cos(t)] ;   (ii) L[1+2*sqrt(t)+3/sqrt(t)]     and    (iii) L[f(t)],
% where f(t)=t^2 when t<2, f(t)=(t-1) when 2<t<3 and f(t)=7 when t>3.
 
clc
clear 
syms t s ;
f=input('Enter the function in terms of  t:');
F=laplace(f)
ezplot(F)
figure
ezplot(f)
