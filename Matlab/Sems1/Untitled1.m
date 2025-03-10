clc
clear all
syms x y
f=(x^2)*y;
fval=subs(f,[x,y],[1,2]);
fx=diff(f,x);
fxval=subs(fx,[x,y],[1,2]);
fy=diff(f,y);
fyval=subs(fy,[x,y],[1,2]);
fxx=diff(fx,x);
fxxval=subs(fxx,[x,y],[1,2]);
fyy=diff(fy,y);
fyyval=subs(fyy,[x,y],[1,2]);
fxy=diff(fx,y);
fxyval=subs(fxy,[x,y],[1,2]);
fapprox=fval+fxval*(x-1)+fyval*(y-2)+(0.5)*(fxxval*(x-1)^2+fyyval*(y-2)^2+fxyval*(x-1)*(y-2))