clc
clear 
%%% Vector Fields in 3-d %%%%%%%%
syms x y z;
F=input('enter the vector as i,j,and k in vector form [x,y,z]: ');
P=inline(vectorize(F(1)),'x','y','z');
Q=inline(vectorize(F(2)),'x','y','z');
R=inline(vectorize(F(3)),'x','y','z');
x=linspace(0,1,10); y=x;z=x;
[X,Y,Z]=meshgrid(x,y,z);
U=P(X,Y,Z); V=Q(X,Y,Z);W=R(X,Y,Z);
quiver3(X,Y,Z,U,V,W,5)
