% Simscape(TM) Multibody(TM) version: 7.2

% This is a model data file derived from a Simscape Multibody Import XML file using the smimport function.
% The data in this file sets the block parameter values in an imported Simscape Multibody model.
% For more information on this file, see the smimport function help page in the Simscape Multibody documentation.
% You can modify numerical values, but avoid any other changes to this file.
% Do not add code to this file. Do not edit the physical units shown in comments.

%%%VariableName:smiData


%============= RigidTransform =============%

%Initialize the RigidTransform structure array by filling in null values.
smiData.RigidTransform(3).translation = [0.0 0.0 0.0];
smiData.RigidTransform(3).angle = 0.0;
smiData.RigidTransform(3).axis = [0.0 0.0 0.0];
smiData.RigidTransform(3).ID = '';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(1).translation = [0 -60 55];  % mm
smiData.RigidTransform(1).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(1).axis = [-0.57735026918962584 -0.57735026918962584 -0.57735026918962584];
smiData.RigidTransform(1).ID = 'B[Base-1:-:Eslabón_R1-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(2).translation = [6.2794250057094251e-14 -2.7381696649305962e-15 1.4210854715201997e-14];  % mm
smiData.RigidTransform(2).angle = 1.5700924586837752e-16;  % rad
smiData.RigidTransform(2).axis = [0.93905656368351764 0.34376266551634693 2.5342280452440543e-17];
smiData.RigidTransform(2).ID = 'F[Base-1:-:Eslabón_R1-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(3).translation = [-16.724794525056989 7.0762951397292415 40];  % mm
smiData.RigidTransform(3).angle = 0;  % rad
smiData.RigidTransform(3).axis = [0 0 0];
smiData.RigidTransform(3).ID = 'RootGround[Base-1]';


%============= Solid =============%
%Center of Mass (CoM) %Moments of Inertia (MoI) %Product of Inertia (PoI)

%Initialize the Solid structure array by filling in null values.
smiData.Solid(2).mass = 0.0;
smiData.Solid(2).CoM = [0.0 0.0 0.0];
smiData.Solid(2).MoI = [0.0 0.0 0.0];
smiData.Solid(2).PoI = [0.0 0.0 0.0];
smiData.Solid(2).color = [0.0 0.0 0.0];
smiData.Solid(2).opacity = 0.0;
smiData.Solid(2).ID = '';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(1).mass = 0.20991813939211582;  % kg
smiData.Solid(1).CoM = [0 -3.7414497178367561 41.094171936837995];  % mm
smiData.Solid(1).MoI = [161.34530229364938 161.91616239179641 113.50382820084133];  % kg*mm^2
smiData.Solid(1).PoI = [10.921611821328138 0 0];  % kg*mm^2
smiData.Solid(1).color = [0.69019607843137254 0.8901960784313725 0.58823529411764708];
smiData.Solid(1).opacity = 1;
smiData.Solid(1).ID = 'Base*:*Predeterminado';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(2).mass = 0.40036504591506367;  % kg
smiData.Solid(2).CoM = [83.923410254770673 0 20];  % mm
smiData.Solid(2).MoI = [140.11501572806552 1464.2884311677697 1497.6394346518182];  % kg*mm^2
smiData.Solid(2).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(2).color = [0.86274509803921573 0.5490196078431373 0.54509803921568623];
smiData.Solid(2).opacity = 1;
smiData.Solid(2).ID = 'Eslabón_R1*:*Predeterminado';


%============= Joint =============%
%X Revolute Primitive (Rx) %Y Revolute Primitive (Ry) %Z Revolute Primitive (Rz)
%X Prismatic Primitive (Px) %Y Prismatic Primitive (Py) %Z Prismatic Primitive (Pz) %Spherical Primitive (S)
%Constant Velocity Primitive (CV) %Lead Screw Primitive (LS)
%Position Target (Pos)

%Initialize the RevoluteJoint structure array by filling in null values.
smiData.RevoluteJoint(1).Rz.Pos = 0.0;
smiData.RevoluteJoint(1).ID = '';

smiData.RevoluteJoint(1).Rz.Pos = 49.787434875436126;  % deg
smiData.RevoluteJoint(1).ID = '[Base-1:-:Eslabón_R1-1]';

