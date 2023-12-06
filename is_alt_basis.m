function y = is_alt_basis(A,B)
%is_alt_basis Checks if the columns of B are an alternative basis to the
%basis formed by the columns of A.

% Check if columns of A and B are bases at all
[~, A_pivs] = rref(A);
[~, B_pivs] = rref(B);
if length(A_pivs) ~= size(A,2) || length(B_pivs) ~= size(B,2)
    fprintf("The columns of A and B must be linearly independent for them to be bases.\n")
    y = false;
    return
end

% Check if columns of B are a valid alternative basis to columns of A

% To be a valid alternative basis, B should have the same number of entries
% in each column as A does.
if size(A,1) ~= size(B,1)
    fprintf("The columns of both A and B form bases.\n" + ...
        "But their dimensions are not consistent to be alternative.\n")
    y = false;
    return
end

% To be a valid alternative basis, each column of B must be linear
% combinations of the columns of A.
% Iterate over columns of B
for ii = 1:size(B,2)
    % Form an augmented matrix of [A {column of B under consideration}]
    aug_mat = [A B(:,ii)];
    [~, aug_mat_pivs] = rref(aug_mat);
    % If a pivot in the last column of the augmented matrix
    if aug_mat_pivs(end) == size(aug_mat,2)
        fprintf("The columns of both A and B form bases.\n" + ...
            "Their dimensions are also consistent to be equivalent.\n" + ...
            "But the columns of B and the columns of A span different subspaces. Hence, they are not equivalent bases.\n")
        y = false;
        return;
    end
end

fprintf("The columns of both A and B form bases.\n" + ...
    "Their dimensions are also consistent to be equivalent.\n" + ...
    "The columns of B and the columns of A span the same subspace. Hence, they are equivalent bases.\n")
y = true;
