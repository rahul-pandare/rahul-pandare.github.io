%% This function is an ode
% this function is used in the script discretization_2.m and ode45 to evalute the
% derivation at a certain point.

function dydx = myode(x, y)
% Define the ODE dy/dx = -2y +x^2
dydx = -2*y+x^2;
end
