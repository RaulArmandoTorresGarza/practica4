clc
clear
close all

% Condiciones iniciales
theta0 = 0;
thetadot0 = 2;

x0 = [theta0; thetadot0];

% Tiempo de simulación
tspan = [0 10];

% Resolver
[t,x] = ode45(@P4semmod, tspan, x0);

% Gráficas
figure
plot(t, x(:,1), 'LineWidth',2)
hold on
plot(t, x(:,2), 'LineWidth',2)
grid on

legend('\theta (rad)','\omega (rad/s)')
xlabel('Tiempo (s)')
ylabel('Respuesta')
title('Práctica 4 - Movimiento Rotacional')