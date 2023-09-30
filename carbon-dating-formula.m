% EoMP Example 2.5
% Problem statement: 
% A fossil has been dead for:
% t_decay = -1/lambda * ln (Q/Q_0)
% The decay constant of carbon-14 is well known to be lambda =
% 0.00012097/year. Q_0 is the initial amount of radioactive material in the
% sample, and Q is the currently remaining amount of radiaoctive material.
% Write a program that reads the percentage of carbon-14 remaining in a
% sample, calcualtes the age of the sample from it, and prints out the
% result with proper units.

% Initializing the decay rate lambda.
lbd = 0.00012097;

% Prompting the user to input the percentage of remaining C-14.
rem_c14_perc = input("Percentage of remaining carbon-14: \n");

% Calculating and storing in memory the age of the sample.
age = -1/lbd * log(rem_c14_perc/100);

% Since the formula has considerable error bars, it makes sense to round to
% the nearest integer.
fprintf("The age of the sample is %.0f years\n", age);
