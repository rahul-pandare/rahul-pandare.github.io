% Batch Reactor Example
% First-order reaction: dCA/dt = -k*CA

% Parameters
k = 0.3;           % rate constant (1/min)
CA0 = 1.0;         % initial concentration (mol/L)
tspan = [0 20];    % time span (minutes)

%% Analytical solution
t = linspace(0, 20, 200);
CA_exact = CA0 * exp(-k*t);

%% Numerical solution with ode45
dCAdt = @(t, CA) -k*CA;           % ODE definition
[t_num, CA_num] = ode45(dCAdt, tspan, CA0);

%% Plot results
figure
plot(t, CA_exact, 'r-', 'LineWidth', 2)     % analytical solution
hold on
plot(t_num, CA_num, 'bo', 'LineWidth', 1.5) % ode45 solution
xlabel('Time (min)')
ylabel('Concentration C_A (mol/L)')
legend('Analytical solution', 'Numerical (ode45)', 'Location', 'NorthEast')
title('Batch Reactor: First-Order Decay of A')
grid on
