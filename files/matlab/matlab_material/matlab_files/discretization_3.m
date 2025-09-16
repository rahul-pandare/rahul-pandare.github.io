clc;    % Clear the command window
clear;  % Clear all variables in workspace
clf;    % Clear the current figure handle

% Parameters
L = 1;               % Length of the rod
T = 5;               % Total simulation time (increased for steady state)
alpha = 0.05;        % Thermal diffusivity
Nx = 20;             % Number of spatial grid points
Nt = 200;            % Number of time steps (increased for finer resolution)
dx = L / (Nx - 1);   % Spatial step size

% Adjust dt to satisfy the stability criterion
dt = min(T / Nt, 0.5 * dx^2 / alpha);

% Discretized domain
x = linspace(0, L, Nx);
t = linspace(0, T, Nt);

% Initial condition
u = sin(pi * x / L);  % Sinusoidal initial condition

% Initialize U to store results
U = zeros(Nx, Nt);
U(:, 1) = u;          % Store the initial condition in the first column

% Time-stepping loop
for n = 1:Nt-1       % Temporal index
    % Update each spatial point (excluding boundaries)
    for i = 2:Nx-1
        u(i) = U(i, n) + alpha * dt / dx^2 * (U(i+1, n) - 2*U(i, n) + U(i-1, n));
    end
    % Enforce boundary conditions
    u(1)  = 0;
    u(Nx) = 0;
    
    % Store the updated values in U for the next time step
    U(:, n+1) = u;
end

% Create a 3D surface plot
[X, T] = meshgrid(x, t);

%figure;
surf(X, T, U');  % Transpose U for correct orientation
title('Temperature Distribution in the Rod Over Time');
xlabel('Position (x)');
ylabel('Time (t)');
zlabel('Temperature (u)');
shading interp; % Optional: for smoother plot
