clear
clc
syms x  real
f= input('Enter the function f(x):'); 
fx= diff(f,x);
fxx= diff(fx,x);
c = solve(fx);
c=double(c);
cmin = min(c); 
cmax = max(c); 
D = [cmin-2, cmax+2];
ezplot(f,D)
hold on
h=ezplot(fx,D);
set(h,'color','r');
e=ezplot(fxx,D);
set(e,'color','g');
legend('f','f_x','f_x_x')
for i = 1:length(c)
    T1 = subs(fxx, x ,c(i) );
    T1=double(T1);
    T3= subs(f, x, c(i)); 
    T3=double(T3);
    if T1==0
        sprintf('The inflection point is x = %d',c(i))
    else
        if T1 < 0
            sprintf('The maximum point x is %d', c(i))
            sprintf('and the maximum value of the function is %d.', T3)
        else
            sprintf('The minimum point x is %d', c(i))
            sprintf('and the minimum value of the function is %d', T3)
        end
    end
    plot(c(i), T3, 'r*', 'markersize', 15)
end
    
    
 


