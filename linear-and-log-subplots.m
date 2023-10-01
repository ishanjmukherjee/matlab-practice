% EoMP Example 3.1
% Problem statement: 
% Plot the function y = x^2 - 10x + 25 over the range 0 to 10 on a linear
% plot using 21 evenly spaces points in one subplot and over the range
% 10^{-1} to 10^1 on a semi logarithmic plot using 21 evenly spaced points
% on a logarithmic x-axis in a second subplot. Put markers on each point
% used in the calculation so that they will be visible, and be sure to
% include a title and axis on each plot.

subplot(2,1,1)
x = linspace(0,10,21);
y = x1.^2 - 10.*x1 + 25;
plot(x,y,x,y,'ro','LineWidth',1);
title('Linear plot of x^2 - 10x + 25');
xlabel('x');
ylabel('y');

subplot(2,1,2)
x = logspace(-1,1,21);
y = x.^2 - 10.*x + 25;
semilogx(x,y,x,y,'ro','LineWidth',1);
title('Semi-logarithmic plot of x^2 - 10x + 25');
xlabel('x');
ylabel('y');
