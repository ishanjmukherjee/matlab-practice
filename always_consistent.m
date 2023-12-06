function y = always_consistent(A)
%always_consistent Checks if the system defined by Ax = b is always
%consistent, ie, for all b

[~, pivs] = rref(A);
% Check if there is a pivot in each row, ie, if the number of pivots equals
% the number of rows
y = length(pivs) == size(A,1);
