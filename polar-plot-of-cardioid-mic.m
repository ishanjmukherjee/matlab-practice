% EoMP Example 3.3
% Problem statement: 
% Plot the gain of a cardioid microphone on polar axes.

angle = linspace(-pi,pi,100);
g = 0.5;
gain = 2*g .* (1 + cos(angle));
polarplot(angle,gain);
title('Gain versus angle \theta');
