% Simscape(TM) Multibody(TM) version: 7.2

% This is a model data file derived from a Simscape Multibody Import XML file using the smimport function.
% The data in this file sets the block parameter values in an imported Simscape Multibody model.
% For more information on this file, see the smimport function help page in the Simscape Multibody documentation.
% You can modify numerical values, but avoid any other changes to this file.
% Do not add code to this file. Do not edit the physical units shown in comments.

%%%VariableName:smiData


%============= RigidTransform =============%

%Initialize the RigidTransform structure array by filling in null values.
smiData.RigidTransform(9).translation = [0.0 0.0 0.0];
smiData.RigidTransform(9).angle = 0.0;
smiData.RigidTransform(9).axis = [0.0 0.0 0.0];
smiData.RigidTransform(9).ID = '';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(1).translation = [1.4731999999999996 0 0];  % m
smiData.RigidTransform(1).angle = 0;  % rad
smiData.RigidTransform(1).axis = [0 0 0];
smiData.RigidTransform(1).ID = 'B[Bar1-1:-:Bar2-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(2).translation = [-0.12700000000000022 0 0];  % m
smiData.RigidTransform(2).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(2).axis = [0 1 0];
smiData.RigidTransform(2).ID = 'F[Bar1-1:-:Bar2-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(3).translation = [1.0998199999999998 0.10160000151395798 0];  % m
smiData.RigidTransform(3).angle = 0;  % rad
smiData.RigidTransform(3).axis = [0 0 0];
smiData.RigidTransform(3).ID = 'B[base-1:-:Bar1-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(4).translation = [-0.050799999999999956 0 0];  % m
smiData.RigidTransform(4).angle = 0;  % rad
smiData.RigidTransform(4).axis = [0 0 0];
smiData.RigidTransform(4).ID = 'F[base-1:-:Bar1-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(5).translation = [2.4130000000000003 -1.1102230246251565e-16 0];  % m
smiData.RigidTransform(5).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(5).axis = [0.70710678118654746 0.70710678118654757 0];
smiData.RigidTransform(5).ID = 'B[Bar2-1:-:Bar3-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(6).translation = [-0.050800000000000012 0 0];  % m
smiData.RigidTransform(6).angle = 0;  % rad
smiData.RigidTransform(6).axis = [0 0 0];
smiData.RigidTransform(6).ID = 'F[Bar2-1:-:Bar3-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(7).translation = [-1.10236 0.10160000151395798 0];  % m
smiData.RigidTransform(7).angle = 0;  % rad
smiData.RigidTransform(7).axis = [0 0 0];
smiData.RigidTransform(7).ID = 'B[base-1:-:Bar3-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(8).translation = [0.25400000000000011 -1.1102230246251565e-16 0];  % m
smiData.RigidTransform(8).angle = 0;  % rad
smiData.RigidTransform(8).axis = [0 0 0];
smiData.RigidTransform(8).ID = 'F[base-1:-:Bar3-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(9).translation = [0 0 0];  % m
smiData.RigidTransform(9).angle = 0;  % rad
smiData.RigidTransform(9).axis = [0 0 0];
smiData.RigidTransform(9).ID = 'RootGround[base-1]';


%============= Solid =============%
%Center of Mass (CoM) %Moments of Inertia (MoI) %Product of Inertia (PoI)

%Initialize the Solid structure array by filling in null values.
smiData.Solid(4).mass = 0.0;
smiData.Solid(4).CoM = [0.0 0.0 0.0];
smiData.Solid(4).MoI = [0.0 0.0 0.0];
smiData.Solid(4).PoI = [0.0 0.0 0.0];
smiData.Solid(4).color = [0.0 0.0 0.0];
smiData.Solid(4).opacity = 0.0;
smiData.Solid(4).ID = '';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(1).mass = 137.40033482973283;  % kg
smiData.Solid(1).CoM = [-0.77813265433721746 2.6749180387143987 -2.3762295925221416e-06];  % cm
smiData.Solid(1).MoI = [3041.3902528144654 623480.97237484192 621288.50011240761];  % kg*cm^2
smiData.Solid(1).PoI = [0.00093810648715321097 -0.0010853413561902065 669.02506635830468];  % kg*cm^2
smiData.Solid(1).color = [1 0.50196078431372548 0.50196078431372548];
smiData.Solid(1).opacity = 1;
smiData.Solid(1).ID = 'base*:*Default';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(2).mass = 87.791065235476154;  % kg
smiData.Solid(2).CoM = [0.66880241274298424 0 0];  % m
smiData.Solid(2).MoI = [0.1132173556458633 15.086194729407513 15.086778050686465];  % kg*m^2
smiData.Solid(2).PoI = [3.998473254071432e-10 0 0];  % kg*m^2
smiData.Solid(2).color = [0.71764705882352942 0.85882352941176465 1];
smiData.Solid(2).opacity = 1;
smiData.Solid(2).ID = 'Bar1*:*Default';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(3).mass = 147.94631933334216;  % kg
smiData.Solid(3).CoM = [1.1193508241535064 0 0];  % m
smiData.Solid(3).MoI = [0.19059582293679134 71.680755498371852 71.680856659389164];  % kg*m^2
smiData.Solid(3).PoI = [6.0796713954143392e-10 0 0];  % kg*m^2
smiData.Solid(3).color = [0.84313725490196079 0.84313725490196079 0];
smiData.Solid(3).opacity = 1;
smiData.Solid(3).ID = 'Bar2*:*Default';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(4).mass = 16.235035467308808;  % kg
smiData.Solid(4).CoM = [0.088596943572427117 0 0];  % m
smiData.Solid(4).MoI = [0.021730930206375003 0.11647576413030759 0.11657693956456296];  % kg*m^2
smiData.Solid(4).PoI = [1.8132152356289693e-10 0 0];  % kg*m^2
smiData.Solid(4).color = [0 0.75686274509803919 0.38039215686274508];
smiData.Solid(4).opacity = 1;
smiData.Solid(4).ID = 'Bar3*:*Default';


%============= Joint =============%
%X Revolute Primitive (Rx) %Y Revolute Primitive (Ry) %Z Revolute Primitive (Rz)
%X Prismatic Primitive (Px) %Y Prismatic Primitive (Py) %Z Prismatic Primitive (Pz) %Spherical Primitive (S)
%Constant Velocity Primitive (CV) %Lead Screw Primitive (LS)
%Position Target (Pos)

%Initialize the RevoluteJoint structure array by filling in null values.
smiData.RevoluteJoint(4).Rz.Pos = 0.0;
smiData.RevoluteJoint(4).ID = '';

smiData.RevoluteJoint(1).Rz.Pos = -54.435023472691761;  % deg
smiData.RevoluteJoint(1).ID = '[Bar1-1:-:Bar2-1]';

smiData.RevoluteJoint(2).Rz.Pos = 83.955969968029891;  % deg
smiData.RevoluteJoint(2).ID = '[base-1:-:Bar1-1]';

%This joint has been chosen as a cut joint. Simscape Multibody treats cut joints as algebraic constraints to solve closed kinematic loops. The imported model does not use the state target data for this joint.
smiData.RevoluteJoint(3).Rz.Pos = 120.47905350466181;  % deg
smiData.RevoluteJoint(3).ID = '[Bar2-1:-:Bar3-1]';

smiData.RevoluteJoint(4).Rz.Pos = -120.00000000000007;  % deg
smiData.RevoluteJoint(4).ID = '[base-1:-:Bar3-1]';

