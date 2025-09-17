%% script for different plots
% For plots in - into to MATLAB presentation
%%
% Plotting multiple curves using single plot command
% Refer to plot on slide no. 9 in the presentation

clc;    % clearing all output in command window
clear;  % clearing all variables in workspace
clf;    % clearing only the current figure handle

x = 0:pi/100:2*pi; % or x=linspace(0,2*pi,201)
y1 = 2*cos(x); %function 1
y2 = cos(x); %function 2
y3 = 0.5*cos(x); %function 2

figure; %create a new figure handle
plot(x,y1,'--',x,y2,'-',x,y3,':', 'LineWidth', 2) %plot takes in agruments: x, y and line style
xlabel('0 \leq x \leq 2\pi') %x label
ylabel('Cosine functions') % y label
legend('2*cos(x)','cos(x)','0.5*cos(x)') %legends
title('Typical example of multiple plots') % title of the plot
axis([0 2*pi -3 3]) % setting the axis bounds for plots

%%
% loglog plot
% Refer to plot on slide no. 10 in the presentation

clc;    % clearing all output in command window
clear;  % clearing all variables in workspace
clf;    % clearing only the current figure handle

% Sample data
x = linspace(0, 10, 1000);  % Generate equally spaced x-values
y = exp(10*x.^2);           % Sample function (y = exp(10*x^2))

% Create a log-log plot
loglog(x, y, 'b-', 'LineWidth', 2);

% Customize the plot (optional)
title('Log-Log Plot');
xlabel('X-axis (log scale)');
ylabel('Y-axis (log scale)');
grid on;

% Add a grid and legend (optional)
legend('y = exp(10*x^2)', 'Location', 'Best');

%%
%Surf Plot

clc;    % clearing all output in command window
clear;  % clearing all variables in workspace
clf;    % clearing only the current figure handle

% Define a grid of x and y values
[x, y] = meshgrid(-2:0.1:2, -2:0.1:2);

% Define a function to compute the surface (e.g., a simple paraboloid)
z = x.^2 + y.^2;

% Create the surface plot
surf(x, y, z);

% Customize the plot (optional)
title('3D Surface Plot');
xlabel('X-axis');
ylabel('Y-axis');
zlabel('Z-axis');

% Add a color map (optional)
colormap('jet');  % You can choose a different colormap

% Add a color bar (optional)
colorbar;

% Adjust the view (optional)
view(45, 30);  % Adjust the azimuth and elevation angles for the view

% Add grid lines (optional)
grid on;

% Set axis limits (optional)
xlim([-2, 2]);
ylim([-2, 2]);
zlim([0, 8]);
