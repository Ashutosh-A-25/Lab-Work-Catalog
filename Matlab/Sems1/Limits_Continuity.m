
clear
clc
syms x y m n
f = input('Enter the function f(x,y): ');
Lp = input('Enter limit point [x0 y0] as a row vector: ');
x0=Lp(1); y0=Lp(2);
L1=limit(limit(f,x,x0),y,y0); L1=double(L1);
L2=limit(limit(f,y,y0),x,x0); L2=double(L2);
disp(['L1 = ', num2str(L1),' L2 = ', num2str(L2)])
if (isnan(L1) || isnan(L2) || (L1~=L2))
    disp('Limit does not exist.')
    return
elseif (L1==L2)
    L = input('Enter the value of f at (x0,y0): '); L=double(L);
    if (L1~=L)
        disp(['Limit exists for the iterated paths, but f(x,y) fails to be '...
            'continuous at the limit point.'])
        return
    else
npaths=input(['Input the number [of paths through (x0,y0)]. '...
        'You may try upto 5: ']);
yp = y0+m*(x-x0)^n;
        f = subs(f,y,yp);
        for i=1:npaths
            val = input(['Input the value of m and n (as a row vector), '...
                'for the trial path y0+m(x-x0)^n: ']);
            m=val(1); n=val(2);
            y=subs(yp);
            fprintf('The path considered is y = '); disp(y);
            fp=subs(f);
L3 = limit(fp,x,x0); L3=double(L3);
            disp(['Limit along this path is L3 = ',num2str(L3)])
            if (isnan(L3)||(L3~=L))
                disp(['Limit does not exist. Function f(x,y) fails to '...
                    'be continuous at the limit point.'])
                return
            end
            disp('Function may be continuous at the limit point.')            
        end
    end
end
 
 


