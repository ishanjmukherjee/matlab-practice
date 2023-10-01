% EoMP Section 3.1.5
% Problem statement: 
% Use the subplot function to plot sin(x) & abs(sin(x)) and cos(x) & 
% abs(cos(x) in the same Figure Window.

% Why have I chosen a multiple of pi (specifically, pi/1000) as the 
% interval instead of something like 0.001? The former ensures 0 is in x, 
% which results in a discontinuity while plotting cos(x)/x (since cos(0)/0 
% is not defined, MATLAB doesn't plot it). This discontunity avoids a 
% vertical-seeming line at x = 0 (connecting the points 
% (x-ε,cos(x-ε)/(x-ε)) and (x+ε,cos(x+ε)/(x+ε)) that is seen if x =
% -pi:0.001:pi instead, for example. Note that 0 won't be in x if the
% interval is not a multiple of pi.

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
