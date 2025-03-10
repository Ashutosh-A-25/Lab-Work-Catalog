% clc
% clear
% n=input('Enter the number of Links: ');
% for i = 1:n
%     a(i)=input('Length: ');
%     t(i)=input('Angle: ');
% end
% Transformation=eye(4);
% for i = 1:n
%     Rotation(:,:,i)=[cosd(t(i)) -sind(t(i)) 0 0;sind(t(i)) cosd(t(i)) 0 0;0 0 1 0;0 0 0 1];
%     Translation(:,:,i)=[ 1 0 0 a(i);0 1 0 0;0 0 1 0;0 0 0 1];
%     Homogeneous(:,:,i)= Rotation(:,:,i)*Translation(:,:,i);
%     sprintf("Homogeneous Transformation Matrix for Link %d",i)
%     Homogeneous(:,:,i)
%    
% end
% 
% for i=1:n
%     Transformation=Homogeneous(:,:,n-i+1)*Transformation;
% end
% Transformation  




   