% EoMP Example 5.1
% Problem statement:
% Read in a set of user-inputted measurements and calculate the mean and
% standard deviation of the data set.

% Initializing variables.
n = 0;
sum_x = 0;
sum_x2 = 0;

x = input("Enter first value: ");

% Receives input as long as input is nonempty (ie, not just a return).
fprintf("Hit return to terminate input process\n")
while ~isempty(x) 
    % Adding sum(inputs) to sum variable and length(x) to n in case user 
    % inputs an array with >1 elements.
    n = n + length(x);
    sum_x = sum_x + sum(x);
    sum_x2 = sum_x2 + sum(x.^2);
    x = input("Enter next value: ");
end

if n >= 2
    % Calculating mean and standard deviation.
    mean = sum_x / n;
    std_dev = sqrt((n*sum_x2 - sum_x^2)/(n * (n-1)));
    
    % Printing number of datapoints, mean and standard deviation.
    fprintf("The number of data points is %f\n", n);
    fprintf("The mean is %f\n", mean);
    fprintf("The standard deviation is %f\n", std_dev);
else
    fprintf("Not enough information.\n");
end
