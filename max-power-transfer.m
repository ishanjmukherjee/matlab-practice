% EoMP Example 2.4
% Problem statement: 
% A voltage source of V = 120 V with an internal resistance R_S of 50 ohm
% is supplying a load of resistance R_L. Find the value of load resistance
% R_L that will result in the maximum possible power being supplied by the
% source to the load. How much power will be supplied in this case? Also,
% plot the power suppled to the load as a function of the load resistance
% R_L.

% Initializing values according to problem statement.
V = 120;
R_int = 50;

% Creating a vector of different load resistance values
R_load = 0:0.1:200;

% We know from physics that power over the load is V^2 * R_L/(R_L+R_S)^2.
P = (V^2) .* R_load ./ (R_int + R_load).^2;

% Printing maximum possible power supply and load resistance at which it is
% produced
[max_P, idx] = max(P);
max_R_load = R_load(idx);
fprintf("Load resistance %.2f Ω will result in the maximum power supply, %.2f W\n", max_R_load, max_P)

% Plotting power against load resistance
plot(R_load,P,'LineWidth',1);
xlabel('R_L (in Ω)');
ylabel('Power (in W)');
title('Power versus load resistance');
grid on;
