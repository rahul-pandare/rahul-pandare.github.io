%% code for discretization of ode: y'= -2y+x^2

clc;    % clearing all output in command window
clear;  % clearing all variables in workspace
clf;    % clearing only the current figure handle

% Define the time span for the solution
xspan = [0, 5];  % Start at t=0 and end at t=5

% Define the initial condition
y0 = 1;

% Use the ode45 solver to solve the ODE using the custom ODE function
[x, y] = ode45(@myode, xspan, y0);

% Plot the results
plot(x, y, '-o');
xlabel('Paramter (x)');
ylabel('y(x)');
title('Solution of y''(x) = -2y+x^2 using ode45');
grid on;