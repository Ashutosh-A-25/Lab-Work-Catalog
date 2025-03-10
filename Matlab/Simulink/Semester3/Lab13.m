% dist = [0 0 10 10 20 20 30];
% speed = [0 2 2 5 5 2 2];
% plot(dist,speed);

clc
clear
speed=[];
for p = 0 : 30
    if (p==0)
        speed(p+1)=0;
    elseif(p<10)
        speed(p+1)=2;
    elseif ((p>=10) &&(p<=20))
        speed (p+1)=5;
    else
        speed(p+1)=2;
    end
end
plot(0:30,speed);