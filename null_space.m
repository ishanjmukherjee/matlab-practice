function N = null_space(A)
%null_space Returns a matrix describing the null space of A.

[m, n] = size(A);
[A_red, pivs] = rref(A);
non_pivs = setdiff(1:n, pivs);

% Preallocating null space
N = zeros(n,length(non_pivs));

N(non_pivs,:) = eye(length(non_pivs));
N(pivs,:) = -A_red(1:length(pivs),non_pivs);
