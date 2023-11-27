function result = is_orthogonal(A)
%is_orthogonal Checks if the columns of a given matrix form an orthogonal
%set.
% result = is_orthogonal(A)
%   result  : output boolean
%   A       : input matrix; its columns are considered by the function
% A set of vectors forms an orthogonal set if each pair of vectors in the
% set is orthogonal, ie, has an inner product equal to zero.

result = true;
n = size(A,2);
% Iterate over all columns of the matrix
for ii = 1:n
    % Compare to all columns following the column in question
    for jj = (ii+1):n
        % Check if dot product of the two columns isn't zero
        if A(:,ii)' * A(:,jj) ~= 0
            result = false;
            % As soon as a non-orthogonal pair is found, force an early
            % return
            return
        end
    end
end
