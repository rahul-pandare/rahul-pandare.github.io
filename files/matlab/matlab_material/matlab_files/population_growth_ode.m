% Population Growth Example
% dP/dt = r*P

% Parameters
r = 0.5;        % growth rate (1/time)
P0 = 10;        % initial population
tspan = [0 10]; % time interval

%% Analytical solution
t = linspace(0, 10, 200);
P_exact = P0 * exp(r*t);

%% Numerical solution with ode45
% Define ODE as an anonymous function
dPdt = @(t, P) r*P;

% Solve using ode45
[t_num, P_num] = ode45(dPdt, tspan, P0);

%% Plot results
figure
plot(t, P_exact, 'r-', 'LineWidth', 2)    % analytical
hold on
plot(t_num, P_num, 'bo', 'LineWidth', 1.5) % numerical
xlabel('Time')
ylabel('Population P(t)')
legend('Analytical solution', 'Numerical (ode45)', 'Location', 'NorthWest')
title('Exponential Population Growth')
grid on