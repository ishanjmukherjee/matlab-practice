function y = is_lin_ind(A)
%is_lin_ind Checks if the columns of A are linearly independent.

[~, pivs] = rref(A);
% Check if there is a pivot in every column, ie, if the number of pivots
% equals the number of columns.
y = length(pivs) == size(A,2);
