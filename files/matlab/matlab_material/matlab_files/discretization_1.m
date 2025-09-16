%% code for  discretization of eq: x(t) = x0 + 10t 

clc;    % clearing all output in command window
clear;  % clearing all variables in workspace
clf;    % clearing only the current figure handle

% Define the initial position, time and time step
x0=1;               %initial position
t0 = 0;             % Initial time
t_step = 0.1;       % Time step
tf = 5;             % Final time

%listing all the t values
t_values = t0:t_step:tf; 

% Initialize array to store x values
x_values = zeros(1, length(t_values));

% Initial condition
x_values(1)=x0;

% Loop to discretize and calculate x(t)
for i = 2:length(t_values)
    x_values(i) = x_values(i-1) + 10 * t_step;
end

% Plot the results
plot(t_values, x_values, '-o');
xlabel('Time (t)');
ylabel('x(t)');
title('Discretized x(t) = x0 + 10t');
grid on;