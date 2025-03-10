%      in the neighbourhood D of a point.
syms x 
y=input('enter the function f in terms of x:')
% Example, Try the function y=x^2-2*x;
%y=x^2-2*x;
x1 = input('Enter x value at which tangent  : '); 
% Example, Try the point x1 =  2
%x1=2;
D=[x1-2 x1+2] % Region about x1 
ezplot(y,D)   % graph of the curve in D 
hold on
% Equation of the tgt line passing through x1.
 yd = diff(y,x); % Differentiation in MATLAB
slope = subs(yd,x,x1); % Finding the slope at x1
y1 = subs(y,x,x1);     % Finding the value of the function at the given point
plot(x1,y1,'ko')       % plot the point
 
Tgt_line = slope*(x-x1)+y1 % Tangent Line Equation at the given point
h = ezplot(Tgt_line,D);    % Plotting the Tangent Line
set(h,'color','r')
