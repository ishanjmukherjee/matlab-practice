% EoMP Example 5.3
% Problem statement:
% Calculate the day of the year based on user inputs of year, month and
% day.

% Get user input for year. Check for input being integer (ie, perfectly
% divisible by 1).
year = 0;
if rem(year, 1) ~= 1
    year = input("year: ");
end

% Get user input for month. Check for input being integer and between 1 &
% 12.
month = 0;
while rem(month,1) ~= 0 || month < 1 || month > 12
    month = input("month: ");
end

% Determine if year is leap.
if rem(year, 4) == 0
    if rem(year, 100) ~= 0
        isleap = true;
    elseif rem(year,400) == 0
        isleap = true;
    else
        isleap = false;
    end
else
    isleap = false;
end

% Create array of number of days per month according to if year is leap or
% not.
if isleap
    month_days = [31 29 31 30 31 30 31 31 30 31 30 31];
else
    month_days = [31 28 31 30 31 30 31 31 30 31 30 31];
end

% Get user input for day. Check for input being integer and between 1 & the
% maximum possible number of days in the inputted month.
day = 0;
while rem(day, 1) ~= 0 || day < 1 || day > month_days(month)
    day = input("day: ");
end

% The total number of days is (sum of days in all preceding months) + (days
% passed in current month)
num_days = sum(month_days(1:month-1)) + day;

% Print the total number of days calculated above, while accounting for
% last digit and appropriate ordinal suffix in English.
if rem(num_days,10) == 1
    fprintf("This is the %ist day of the year.\n", num_days);
elseif rem(num_days,10) == 2
    fprintf("This is the %ind day of the year.\n", num_days);
elseif rem(num_days, 10) == 3
    fprintf("This is the %ird day of the year.\n", num_days);
else
    fprintf("This is the %ith day of the year.\n", num_days);
end
