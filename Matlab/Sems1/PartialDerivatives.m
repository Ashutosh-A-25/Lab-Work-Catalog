clear
clc
syms x y 
 z = input('Enter f(x, y): '); % e.g. 4 - x^2 - 2y^2
pt = input('Enter [x0, y0] : '); % e.g. [1,1]
x0 = pt(1); y0 = pt(2); 
ex = 2; ey = 2;
D = [x0-ex x0+ex y0-ey y0+ey];
fsurf(z,D); 
hold on
z0=subs(z,[x,y],[x0,y0]);
z0 = double(z0);
plot3(x0,y0,z0,'r*','markersize',20);
zx=diff(z,x); zy=diff(z,y);
zx0=subs(zx,[x,y],[x0,y0]);
zy0=subs(zy,[x,y],[x0,y0]);
ez = 2;
[x2,z2] = meshgrid([D(1) D(2)],[z0-ez z0+ez]);
y2 = y0*ones(size(x2));
surf(x2,y2,z2);
surf(x2,y2,z2,'FaceColor',[0.3,0.1,0.3],'EdgeColor','none');
t=linspace(-ex,ex,10);
x3=x0+t; y3=y0*ones(size(t)); z3=z0+zx0*t; 
   % Tangent line is z - z0 = zx(x0,y0)*(x-x0);
line(x3,y3,z3,'color','b','linewidth',2); 
t=linspace(-ey,ey,10);
x5=x0*ones(size(t));
y5=y0+t;
z5=z0+zy0*t;   % Tangent line is z - z0 = zy(x0,y0)*(y-y0);
line(x5,y5,z5,'color','g','linewidth',2);  
[X,Y]=meshgrid([D(1) D(2)], [D(3) D(4)]);
Z=z0+zx0*(X-x0)+zy0*(Y-y0); Z = double(Z);
surf(X,Y,Z)
