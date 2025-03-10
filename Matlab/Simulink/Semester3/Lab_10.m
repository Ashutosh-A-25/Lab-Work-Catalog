% Finding Torque for a one link manipulator
clc
clear
% l=input("Link Length : ");
% m= input('Mass : ');
% a = input('Acceleration : ');
% th1=input('Lower Limit for the angle : ');
% th2=input('Upper Limit for the angle : ');
% g=9.8;
% th=th1:l:th2
% ans=m*(l^2)*a+m*g*l*cosd(th);
% plot(th,ans);
% xlabel('Theta');
% ylabel('Torque');

% Finding Torque for a two link manipulator

m1=input('Mass  of joint 1: ');
m2=input('Mass  of joint 2: ');
l1=input('Link Length 1 : ');
l2=input('Link Length 2 : ');
g=9.8;
th1=-90:10:90;
th2=-90:10:90;
v1=input('Velcity for joint 1 : ');
v2=input('Velcity for joint 2 : ');
a1=input('Acceleration for joint 1 : ');
a2=input('Acceleration for joint 2 : ');
t1=(m1*(l1^2)+m2*(l1^2+2*l1*l2*cosd(th2)+l2^2))*a1+m2*(l1*l2*cosd(th2)+l2^2)*a2-m2*l1*l2*sind(th2)*(2*v1*v2+v2^2)+(m1+m2)*l1*g*cosd(th1)+m2*g*l2*cosd(th1+th2);
plot(th1,t1)
hold on;
t2=m2*(l1*l2*cosd(th2)+l2^2)*a1+m2*(l2^2)*a2+m2*l1*l2*(v1^2)*sind(th2)+m2*g*l2*cosd(th1+th2);
plot(th2,t2)
xlabel('Angle');
ylabel('Torque');

