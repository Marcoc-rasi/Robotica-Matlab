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
smiData.RigidTransform(1).translation = [-24.999999999999993 -19.999999999999989 55.000000000000007];  % mm
smiData.RigidTransform(1).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(1).axis = [0.57735026918962584 0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(1).ID = 'B[Base_P-1:-:Eslabón_P1-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(2).translation = [-1.2672639969373733 0 -40];  % mm
smiData.RigidTransform(2).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(2).axis = [0.57735026918962584 0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(2).ID = 'F[Base_P-1:-:Eslabón_P1-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(3).translation = [-143.74824881875665 -121.86006797054003 90.937192157046368];  % mm
smiData.RigidTransform(3).angle = 0;  % rad
smiData.RigidTransform(3).axis = [0 0 0];
smiData.RigidTransform(3).ID = 'RootGround[Base_P-1]';


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
smiData.Solid(1).mass = 0.32200000000000017;  % kg
smiData.Solid(1).CoM = [21.125776397515541 0 47.826086956521742];  % mm
smiData.Solid(1).MoI = [370.81992753623189 1014.8618335921329 800.4085727225679];  % kg*mm^2
smiData.Solid(1).PoI = [0 -184.85054347826079 0];  % kg*mm^2
smiData.Solid(1).color = [0.69019607843137254 0.8901960784313725 0.58823529411764708];
smiData.Solid(1).opacity = 1;
smiData.Solid(1).ID = 'Base_P*:*Predeterminado';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(2).mass = 0.28800000000000003;  % kg
smiData.Solid(2).CoM = [90 19.999999999999996 -19.999999999999996];  % mm
smiData.Solid(2).MoI = [76.799999999999983 816.00000000000034 816.00000000000034];  % kg*mm^2
smiData.Solid(2).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(2).color = [0.85490196078431369 0.67450980392156867 0.54117647058823526];
smiData.Solid(2).opacity = 1;
smiData.Solid(2).ID = 'Eslabón_P1*:*Predeterminado';


%============= Joint =============%
%X Revolute Primitive (Rx) %Y Revolute Primitive (Ry) %Z Revolute Primitive (Rz)
%X Prismatic Primitive (Px) %Y Prismatic Primitive (Py) %Z Prismatic Primitive (Pz) %Spherical Primitive (S)
%Constant Velocity Primitive (CV) %Lead Screw Primitive (LS)
%Position Target (Pos)

%Initialize the PrismaticJoint structure array by filling in null values.
smiData.PrismaticJoint(1).Pz.Pos = 0.0;
smiData.PrismaticJoint(1).ID = '';

smiData.PrismaticJoint(1).Pz.Pos = 0;  % m
smiData.PrismaticJoint(1).ID = '[Base_P-1:-:Eslabón_P1-1]';

