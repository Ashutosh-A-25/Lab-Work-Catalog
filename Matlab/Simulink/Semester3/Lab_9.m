clc
clear

% Scara Robot & Two link manipulator
% l1=input("Link Length 1: ");
% l2=input("Link Length 2: ");
% m=0;
% out=0;
% for i=1:360
%     w=abs(l1*l2*(sind(i)));
%     if(w>out) 
%         m=i;
%         out=w;
%     end
%     plot(i,w,".");
%     hold on
% end
% sprintf("Max value of Manipulability %d for angle %d",out,m)

% Puma Robot
L2=input("Link length 2: ");
L3=input("Link Length 3: ");
m=0;
out=0;
for i=0:360
    w=L2*L3* sqrt( L2^2 + L3^2 + 2*L2*L3*cosd(i)) * abs(sind(i));
    if(w>out)
        m=i;
        out=w;
    end
    plot(i,w,'.');
    hold on
end
theta3=acosd( ( sqrt( (L2^2+L3^2)^2 + 12*L2^2*L3^2 ) - (L2^2+L3^2) ) / (6*L2*L3) );
sprintf("Theta3 from formula :%.2f",theta3)
sprintf("Max Value of Manipulability %.2f at angle %d",out,m)

