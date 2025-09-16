%% sample code

% Define the x values (e.g., time points)
x = 0:0.1:2*pi;

% Calculate the corresponding y values (sine values)
y = sin(x);

% Create a figure and plot the data
%figure;
plot(x, y, 'b', 'LineWidth', 1.2)

% Add labels and a title
xlabel('Time (s)');
ylabel('Amplitude');
title('Sine Wave');

% Add a grid
grid on;