% EoMP Exercise 3.16 
% Problem statement: 
% Plot the spiral of Archimedes for 0 <= theta <= 6*pi when k = 0.5. Label 
% your plot properly.

% Initializing the range of theta and k from the problem statement.
theta = linspace(0, 6*pi, 100);
k = 0.5;

% Creating r from the given values of k and theta
r = k .* theta;

% Plotting r as an implicit function of theta
polarplot(r);

% Setting the number of segments in the polar plot
n_segments = 12;
ticks = linspace(0,360,n_segments + 1);

% Creating a set number of segments in the polar plot. (Note that a plot
% with n segments has n+1 ticks.)
thetaticks(ticks)

% Multiplying each of the ticks by theta(end)/(2*pi). For example, if 0 <=
% theta <= 6*pi, each tick is multipled by 3. Then, convert each tick to a
% string to feed as input into the thetaticklabels function.
thetaticklabels(string(ticks .* (theta(end) / (2*pi))))
