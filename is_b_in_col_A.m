function y = is_b_in_col_A(A,b)
%is_b_in_col_A Checks if b is in the column space of A

if size(A,1) ~= size(b,1)
    warning("Incompatible dimensions.")
    y = false;
else
    aug_mat = [A b];
    [~, pivs] = rref(aug_mat);
    % If there is a pivot in the last column of the augmented matrix, Ax =
    % b is inconsistent, implying that b is not in Col A
    y = pivs(end) ~= size(aug_mat,2);
end
