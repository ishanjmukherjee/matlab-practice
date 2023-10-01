% EoMP Example 3.2
% Problem statement: 
% Plot a decaying exponential function where the time constant is 3 s and 
% the radial velocity is pi rad/s over the range 0 <= t <= 10 s. Include
% the plotted equation in the title of the plot, and label the axes
% properly.

t = linspace(0,10);
t_const = 3;
rad_vel = pi;

y = 10 .* exp(1) .^ (-t ./ t_const) .* sin(rad_vel .* t);
plot(t,y);
title('Plot of a decaying exponential function y(t) = {\ite}^{-t/\tau} sin \omegat');
xlabel('\itt');
ylabel('\ity(t)');
grid on;
