function C = col_space(A)
%col_space Returns a matrix describing the column space of A.

[~, pivs] = rref(A);
C = A(:,pivs);
