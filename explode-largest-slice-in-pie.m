% EoMP Section 3.4
% Problem statement: 
% Convert a user-inputted array into a pie chart and explode the largest
% slice.

x = input("Enter array: ");
[m, idx] = max(x);
expl_arr = zeros(size(x));
expl_arr(idx) = true;
pie(x,expl_arr);
