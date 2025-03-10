clear 
clc

l1=input("link length 1 : ");
l2=input("link length 2: ");
xstart=2;
ystart=5;
xd=[2,3,4,5,6];
yd=[5,6,7,8,9];
leng = length(xd);
%Theta = tand(y/x);
%two link manipulator
figure();
hold on
for i=1:leng
x=xd(i);
y=yd(i);
theta2_1=acosd((x^2+y^2-l1^2-l2^2)/(2*l1*l2));
theta2_2=pi-acosd((x^2+y^2-l1^2-l2^2)/(2*l1*l2));
alpha_1=atand((l1+l2*cosd(theta2_1))/(l2*sind(theta2_1)));
alpha_2=atand((l1+l2*cosd(theta2_2))/(l2*sind(theta2_2)));
theta1_1=alpha_1-atand(x/y);
theta1_2=alpha_2-atand(x/y);
fprintf('Position %d\n', i)
fprintf("theta1 of two link manipulator")
disp(theta1_1)
%fprintf("alternative theta1 of two link manipulator")
%disp(theta1_2)
fprintf("theta2 of two link manipulator")
disp(theta2_1)
%fprintf("alternative theta2 of two link manipulator")
%disp(theta2_2)
plot(theta1_1,theta2_1,'*-')
xlabel('Theta 1');
ylabel('Theta 2');
end