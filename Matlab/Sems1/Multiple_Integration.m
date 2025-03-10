clc
clear 
syms x y z
int(int(x-3*y^2+0*y, y,1,2),x,0,2)
viewSolid(z,0+0*x+0*y,x-3*y^2+0*y,y,1+0*x,2+0*x,x,0,2)
% int(int(x-3*y^2,x,0,2),y,1,2)
% viewSolidone(z,0+0*x+0*y,x-3*y^2+0*y,x,1+0*y,2+0*y,y,0,2)
