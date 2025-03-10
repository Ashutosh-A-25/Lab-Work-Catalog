clear
clc

% k=1;
% dist=[];
% speed=[];
% 
% for i = 0 : 5 : 50
%     dist(k)=i;
%     if(i==0 || i==50)
%         speed(k)= 0;
%     elseif(i<=5 || 50-i<=5)
%         speed(k)=1;
%     elseif(i<=10 || 50-i<=10)
%             speed(k)=2;
%     elseif(i<=15 || 50-i<=15)
%         speed(k)=3;
%     elseif(i<=20 || 50-i<=20)
%         speed(k)=4;
%     elseif(i<=25)
%         speed(k)=5;
%     end
%     k=k+1;
% end
% % speed
% % dist
% 
% plot(dist(1:6),speed(1:6),'b');
% hold on;
% plot(dist(6:11),speed(6:11),'r');
% xlabel('Distance');
% ylabel('Speed');
% legend({'Increasing Gear','Decreasing Gear'},'Location','northwest');



% g=[1 2 3 4 5 4 3 2 1];
% a=1:5;
% b=5:length(g);
% speed=[];
% for m =1:length(g)
%     if(m>=1 && m<=5)
%         speed(end+1)=g(m)*10;
%     elseif(m>=6 && m<=length(g))
%         speed(end+1)=g(m)*9;
%     end
%     if(speed(end)==50)
%         fprintf('Warning Speed has reached the upper limit, decreasing the gear at %d gear\n',m);
%     end
%     
% end
% 
% plot(g(1:5),speed(1:5),'b');
% hold on;
% plot(g(5),speed(5),'b*');
% plot(g(b),speed(b),'r');
% xlabel('Gear');
% ylabel('Speed');
% legend({'acceleration','decceleration'},'Location','northwest');


% voltage range for any device for example (100-240)
% stabilizers (if voltage is not in the range it will simply map the voltage so that it falls into the given range)

% lower=input('Enter lower bound of voltage for the device : ');
% upper=input('Enter upper bound of voltage for the device : ');
% 
% for i=1:5
%     v=input('Enter any random voltage value : ');
%     disp("Stabilizer's Status:");
%     if(v>=lower && v<=upper)
%         disp('Safe for Use');
%     elseif(v<lower)
%         k=lower-v;
%         fprintf('Voltage Boosted by %d V for safe operation\n',k);
%     elseif(v>upper)
%         k=v-upper;
%         fprintf('Voltage Suppressed by %d V for safe operation\n',k);
%     end
% end

% speed=[];
% dist=[];
% key=0;
% sum=0;
% top=[];
% fprintf('Initial Speed : 0 km/hr\n');
% for i = 0:5:100
%     dist(end+1)=i;
%     if(i<=20)
%         speed(end+1)=10;
%     elseif(i<40)
%         speed(end+1)=20;
%     elseif(i<=60)
%         speed(end+1)=15;
%     elseif(i<=80)
%         speed(end+1)=10;
%     elseif(i<=90)
%         speed(end+1)=5;
%     else
%         speed(end+1)=0;
%     end
%     if(speed(end)>=20)
%         top(end+1)=i;
%         key=1;
%     elseif(speed(end)<20 && key==1)
%         top(end+1)=i;
%         key=0;
%     end
%     sum=sum+speed(end);
% end
% fprintf('Max Speed Reached from %d till %d km\n',top(1),top(end));
% fprintf('Final Speed : %d km/hr\n',speed(end));
% fprintf('Average Speed through out the journey : %f km/hr\n',sum/100);
% fprintf('\n');
% plot(dist,speed);
% xlabel('Distance in km');
% ylabel('Speed in km/hr');

x=input("Enter the maximum no. of rows: ");
y=input("Enter the maximum no. of columns: ");
c=input("Row : ");
d=input("Column : ");
a=c;
b=d;
if (a==0 && b==0)||(a==0 && b==y)||(a==x && b==0)||(a==x && b==y)
 fprintf("%s \n","Two way")
elseif ((0<a)&& (a<x) && (0<b)&&(b<y))
 fprintf("%s \n","Four way")
else
 fprintf("%s \n","Three way")
end


