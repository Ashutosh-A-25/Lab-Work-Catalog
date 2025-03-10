clc
clear 
syms x y real 
f= input('Enter the function f(x,y):');
fx= diff(f,x); 
fy=diff(f,y);
[ax,ay] = solve(fx,fy);
fxx= diff(fx,x);  fxy=diff(fx,y); fyy =diff(fy,y);
D=fxx*fyy - fxy^2;
for i=1:1:size(ax)
    figure
    T1=subs(subs(D,x,ax(i)),y,ay(i));
    T2=subs(subs(fxx,x,ax(i)),y,ay(i));
    T3=subs(subs(f,x,ax(i)),y,ay(i));
    if (double(T1)==0)
        sprintf('The point (x,y) is (%d,%d) and need further investigation',double(ax(i)),double(ay(i)))
    elseif(double(T1)<0)
        sprintf('The point (x,y) is (%d,%d) is saddle point',double(ax(i)),double(ay(i)))
    else
        if(double(T2)<0)
            sprintf('The maximum point (x,y) is (%d,%d)',double(ax(i)),double(ay(i)))
            sprintf('The value of the function is %d',double(T3))
        else
            sprintf('The minimum point (x,y) is (%d,%d)',double(ax(i)),double(ay(i)))
            sprintf('The value of the Function is %d',double(T3))
        end
    end
    fsurf(f,[double(ax(i))-2,double(ax(i))+2,double(ay(i))-2,double(ay(i))+2]);
    hold on
    plot3(double(ax(i)),double(ay(i)),double(T3),'r*','markersize',15);
end
        
        
    



        
