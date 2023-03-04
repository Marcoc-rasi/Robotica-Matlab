
%Resolución de la configuración inical de un robot

%Parámetros del robot
L1 = 0.12;  %m
L2 = 0.12;  %m
L3 = 0.071213;  %m

x0 = 0.055;  %m
y0 = 0.0;   %m

%Posición y orientación inical

xp_inicial = 0.1;  %m
yp_inicial = 0.1;  %m
thetap_inicial = pi/2; %rad

%Posición y orientación final
xp_final =0.2;  %m
yp_final = -0.05;  %m
thetap_final = 0; %rad

%Determinación de la coordenada x3 y y3 en la configuración inicial

x3_inicial = xp_inicial-L3*cos(thetap_inicial);
y3_inicial = yp_inicial-L3*sin(thetap_inicial);

%Determinación de la coordenada x3 y y3 en la configuración inicial

x3_final = xp_final-L3*cos(thetap_final);
y3_final = xp_final-L3*sin(thetap_final);

%Cálculo de la postura inicial

%Definición de las variables
syms theta1_in theta2_in theta1_fin theta2_fin

%Cálculo de la postura inicial
[theta1_in,theta2_in] = solve(x0+L1*cos(theta1_in)+L2*cos(theta1_in+theta2_in)==x3_inicial,y0+L1*sin(theta1_in)+L2*sin(theta1_in+theta2_in)==y3_inicial,[theta1_in,theta2_in]);

%Cálculo de la postura final
[theta1_fin,theta2_fin] = solve(x0+L1*cos(theta1_fin)+L2*cos(theta1_fin+theta2_fin)==x3_final,y0+L1*sin(theta1_fin)+L2*sin(theta1_fin+theta2_fin)==y3_final,[theta1_fin,theta2_fin]);


%%%%%%Simulación numerica %%%%%%%%%%

%Duración del tiempo de simulación 

T = 10; %seg tiempor total de la tarea
muestreo = 20;
intiempo = 10/muestreo;

%segmento del tiempo
tin = 0:intiempo:T;

%Cálculo del ángulo theta3 solución 1
theta3in_1 = thetap_inicial-theta1_in(1)-theta2_in(1);
theta3fin_1 = thetap_final-theta1_fin(1)-theta2_fin(1);

%Cálculo del ángulo theta3 solución 2
theta3in_2 = thetap_inicial-theta1_in(2)-theta2_in(2);
theta3fin_2 = thetap_final-theta1_fin(2)-theta2_fin(2);


%%%%%Corrección del cálculo de última postura


theta1_finc = 0.2575;
theta2_finc = -0.9935;
theta3_finc =  0.7360;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Duración del tiempo de simulación 

T = 10; %seg tiempor total de la tarea
muestreo = 20;
intiempo = 10/muestreo;

%segmento del tiempo
tin = 0:intiempo:T;

Vtheta1=((30/T^3)*tin.^2-(60/T^4)*tin.^3+(30/T^5)*tin.^4)*(theta1_finc-theta1_in(1));
Vtheta2=((30/T^3)*tin.^2-(60/T^4)*tin.^3+(30/T^5)*tin.^4)*(theta2_finc-theta2_in(1));
Vtheta3=((30/T^3)*tin.^2-(60/T^4)*tin.^3+(30/T^5)*tin.^4)*(theta3_finc-theta3in_1);

figure(1)
hold on
plot(tin,Vtheta1,'Color','red');
plot(tin,Vtheta2,'Color','green');
plot(tin,Vtheta3,'Color','blue');
title('Velocidades angulares de las juntas');
xlabel('t');
ylabel('1/s');
legend('\theta1','\theta2','\theta3');
hold off

%Simulación 1
figure(2)
for i = 1:1:muestreo+1
    
t = intiempo*(i-1); %Se toma en cuenta 0 como inicio de la acción

theta1sim1 = theta1_in(1)+((10/T^3)*t^3-(15/T^4)*t^4+(6/T^5)*t^5)*(theta1_finc-theta1_in(1));
theta2sim1 = theta2_in(1)+((10/T^3)*t^3-(15/T^4)*t^4+(6/T^5)*t^5)*(theta2_finc-theta2_in(1));
theta3sim1 = theta3in_1+((10/T^3)*t^3-(15/T^4)*t^4+(6/T^5)*t^5)*(theta3_finc-theta3in_1);
    
x1L1 = [0 x0+L1*cos(theta1sim1)];
y1L1 = [0 y0+L1*sin(theta1sim1)];

x2L1 = [x0+L1*cos(theta1sim1) x0+L1*cos(theta1sim1)+L2*cos(theta1sim1+theta2sim1)];
y2L1 = [y0+L1*sin(theta1sim1) y0+L1*sin(theta1sim1)+L2*sin(theta1sim1+theta2sim1)];

x3L1 = [x0+L1*cos(theta1sim1)+L2*cos(theta1sim1+theta2sim1) x0+L1*cos(theta1sim1)+L2*cos(theta1sim1+theta2sim1)+L3*cos(theta1sim1+theta2sim1+theta3sim1)];
y3L1 = [y0+L1*sin(theta1sim1)+L2*sin(theta1sim1+theta2sim1) y0+L1*sin(theta1sim1)+L2*sin(theta1sim1+theta2sim1)+L3*sin(theta1sim1+theta2sim1+theta3sim1)];

%plot(xp_inicial,yp_inicial,'k*');
%plot(xp_final,yp_final,'k*');
%figure
line(x1L1,y1L1,'Color','red','LineStyle','-')
line(x2L1,y2L1,'Color','green','LineStyle','-')
line(x3L1,y3L1,'Color','blue','LineStyle','-')

F(i) = getframe;

end

movie(F)



%%%%%Estudio de manipulabilidad

wmax = L1*L2*sin(pi/2);

theta1_est = double(theta1_in(1)+((10/T^3)*tin.^3-(15/T^4)*tin.^4+(6/T^5)*tin.^5)*(theta1_finc-theta1_in(1)));
theta2_est = double(theta2_in(1)+((10/T^3)*tin.^3-(15/T^4)*tin.^4+(6/T^5)*tin.^5)*(theta2_finc-theta2_in(1)));
theta3_est = double(theta3in_1+((10/T^3)*tin.^3-(15/T^4)*tin.^4+(6/T^5)*tin.^5)*(theta3_finc-theta3in_1));

figure
w_est= abs(L1*L2*sin(theta2_est)/wmax);
plot(tin,w_est,'Color','red');
title('Manipulabilidad');
xlabel('t');
ylabel('w');

%%%%%%Generación de señales

t_sig =  transpose(tin);

theta1_tran = transpose(-theta1_est);
theta2_tran = transpose(-theta2_est);
theta3_tran = transpose(-theta3_est);

signal_theta1 = [t_sig theta1_tran];
signal_theta2 = [t_sig theta2_tran];
signal_theta3 = [t_sig theta3_tran];


