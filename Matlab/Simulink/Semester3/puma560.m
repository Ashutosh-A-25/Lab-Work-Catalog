l(1)=Link([0,0,0,pi/2,0]);
l(2)=Link([0,0,0.4318,0,0]);
l(3)=Link([0,0.15,0.203,-pi/2,]);
l(4)=Link([0,0.431,0,pi/2,0]);
l(5)=Link([0,0,0,-pi/2,0]);
l(6)=Link([0,0,0,0,0]);
puma=SerialLink(l);

%Link (theta,d,a,alpha,offset)

puma.plot([0,0,0,0,0,0]);