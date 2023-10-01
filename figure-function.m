% EoMP Section 3.1.4
% Problem statement: 
% Display plots in multiple Figure Windows

% From MATLAB documentation: figure(n) finds a figure in which the Number 
% property is equal to n, and makes it the current figure. If no figure 
% exists with that property value, MATLAB® creates a new figure and sets 
% its Number property to n.
figure(1)
x = 0:0.05:2;
y1 = exp(x);
plot(x,y1);
title('e^{x}');
grid on;

figure(2)
y2 = exp(-x);
plot(x,y2);
title('e^{-x}');
grid on;
