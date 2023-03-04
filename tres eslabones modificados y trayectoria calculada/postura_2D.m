% Definición de las funciones del robot
function Fp = postura_2D(q,x3,y3)

%Cambio de variable para la solución del sistema
theta1 = q(1);
theta2 = q(2);

%Parámetros del robot
L1 = 0.12;  %m
L2 = 0.12;  %m
L3 = 0.06;  %m
x0 = 0.055;  %m
y0 = 0.0;   %m

%Funciones
Fp(1) = x0+L1*cos(theta1)+L2*cos(theta1+theta2)-x3;
Fp(2) = y0+L1*sin(theta1)+L2*sin(theta1+theta2)-y3;
end