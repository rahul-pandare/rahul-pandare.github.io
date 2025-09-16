%% code for discretization of ode: y'= -2y+x^2

clc;    % clearing all output in command window
clear;  % clearing all variables in workspace
clf;    % clearing only the current figure handle

%Define the ODE function
%we can define the ode as shown below or write it into a function and use
%it in this script. But here we use the function myode.m
%myode = @(x, y) -2 * y+x^2;

% Define the time span for the solution
xspan = [0, 5];  % Start at t=0 and end at t=5

% Define the initial condition
y0 = 1;

% Discretize the time span into discrete time points
x_values = linspace(xspan(1), xspan(2), 100); % 100 time points
h = x_values(2) - x_values(1); %delta x (spacing)

% Initialize array to position values (y)
y_values = zeros(1, length(x_values));

% Set the initial values
y_values(1) = y0;

% Apply the Euler method for numerical integration
for i = 2:length(x_values)
    y_values(i) = y_values(i-1) + h * myode(x_values(i-1), y_values(i-1));
    
end

% Plot the solution
plot(x_values, y_values, '-*', 'LineWidth', .5);
xlabel('Parameter (x)');
ylabel('Solution (y)');
title('Solution of dy/dx = -2y+x^2 (Euler Method)');
grid on;