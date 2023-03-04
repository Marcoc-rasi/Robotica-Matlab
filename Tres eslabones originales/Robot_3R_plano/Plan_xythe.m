%Planeación de una tarea en el espacio de trabajo de un robot
%El lugar geométrico de la trayectoria es una línea recta 

%%%%%%%%%Parametros de la trayectoria %%%%%%%%%%%%
%Posición inical

xp_in = 0.05;  %m
yp_in = 0.1;  %m

%Posición final

xp_fin = 0.15;  %m
yp_fin = 0.15;  %m

%Orientación inicial

thetap_in = pi/2; %rad

%Orientación final

thetap_fin = -pi; %rad

delta_t = 0.1;
%%%%%%%%%Definición de la trayectoria %%%%%%%%%%%%%%%%%%
T = 10; %tiempo total de la tarea
t = 0:delta_t:10;% instantes de tiempo de la tarea

%Determinación de cada una de las coordenadas de la trayectoria

x_tray = xp_in+((10/T^3)*t.^3-(15/T^4)*t.^4+(6/T^5)*t.^5)*(xp_fin-xp_in);
y_tray = yp_in+((10/T^3)*t.^3-(15/T^4)*t.^4+(6/T^5)*t.^5)*(yp_fin-yp_in);
plot(x_tray,y_tray)

%Requerimientos de orientación 

theta_tray = thetap_in+((10/T^3)*t.^3-(15/T^4)*t.^4+(6/T^5)*t.^5)*(thetap_fin-thetap_in);
figure
plot(t,theta_tray)

%generación de la señan del salida

tsim=transpose(t);

%usarán en simulink
signal_tp=[tsim theta_tray];
signal_xp=[tsim x_tray];
signal_yp=[tsim y_tray];

%Establecimiento de la determinación de la configuración

%Parametros del robot

%Parámetros del robot
L1 = 0.12;  %m
L2 = 0.12;  %m
L3 = 0.06;  %m

x0 = 0.055;  %m
y0 = 0.0;   %m

%ciclo

inter_t = T/delta_t;

function Fu = myfunction_pierna1(pu,x3,y3) 

%variables del sistema de ecuaciones
 theta1sim = pu(1);
 theta2sim = pu(2);

%%Sistema de ecuaciones para la primera pierna%%
 Fu(1) = x0 + L1 * cos(theta1sim) + L2 * cos( theta1sim + theta2sim)- x3); 
 Fu(2) = y0 + L1 * sin(theta1sim) + L2 * sin( theta1sim+theta2sim)- y3); 
 
end
