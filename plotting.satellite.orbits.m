% EoMP Exercise 3.16
% Problem statement:
% A satellite's oribt can be expressed in polar coordinates as
% distance from center = p / (1 - eccentricity * cos(angle from center))
% Plot the oribt of a satellite for eccentricites 0, 0.25 & 0.5. How close
% does each orbit come to the Earth? How far away does each orbit get from
% the Earth?

theta = linspace(0,2*pi,100);
p = 1000;

% Per question, we will plot distance when eccentricity is 0, 0.25 and 0.5
eps = [0 0.25 0.5];

% Iterating over the length of the eccentricities array
for ii = 1:length(eps)
    r = p ./ (1 - eps(ii) .* cos(theta));
    fprintf("For eccentricity = %.3f, max distance = %.3f km and min distance = %.3f km.\n", eps(ii), max(r), min(r));
    
    % Creating a plot of length(eccentricities array) x 1 sections, then
    % selecting the ii'th subplot
    subplot(length(eps),1,ii)
    
    % Plotting r as an implicit function of theta
    polarplot(r);
end
