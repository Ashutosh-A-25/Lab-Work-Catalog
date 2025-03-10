dh3=[
    0 0 1000 -pi/2
    0 0 500 0
   0 0 500 0
   0 0 0 0
   ];
r=SerialLink(dh3);
r.name="Robo2D2";
r
r.plot([0,pi/2,0,0]);

%dh=[
    %0 0 300 0
   % 0 0 240 0
    %0 0 180 pi
    %0 0 223.6 0
   % ];
%r=SerialLink(dh);
%r.name="Robo2D";
%r
%r.plot([pi/3,-pi/6,-pi/6,0.647*pi]);