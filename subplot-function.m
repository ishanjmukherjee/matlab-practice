% EoMP Section 3.1.5
% Problem statement: 
% Use the subplot function to plot sin(x) & abs(sin(x)) and cos(x) & 
% abs(cos(x) in the same Figure Window.

x = -pi:pi/1000:pi;

subplot(2,1,1)
plot(x,sin(x),x,sin(x)./x,'LineWidth',1);
title('sin(x)');
legend('sin(x)', 'sin(x)/x')

subplot(2,1,2)
plot(x,cos(x),x,cos(x)./x,'LineWidth',1);
ylim([-1 1]);
legend('cos(x)', 'cos(x)/x');
title('cos(x)');
