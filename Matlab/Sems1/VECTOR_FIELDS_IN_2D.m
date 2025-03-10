clc
clear 
%%% Vector Fields in 2-d %%%%%%%%
syms x y
F=input('enter the vector as i and j in vector form [x,y]: ');
P=inline(vectorize(F(1)),'x','y');
Q=inline(vectorize(F(2)),'x','y');
x=linspace(0,1,10); y=x;
[X,Y]=meshgrid(x,y);
U=P(X,Y); V=Q(X,Y);
quiver(X,Y,U,V,5)
