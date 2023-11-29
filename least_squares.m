function [solution, approx, error] = least_squares(A, b)
%least_squares Computes the least-squares solution, approximation and
%error.
% [solution, approx, error] = least_squares(A, b)
%   A           : matrix A in the equation Ax = b
%   b           : vector b in the equation Ax = b
%   solution    : least-squares solution to Ax = b
%   approx      : least-squares approximation
%   error       : error in the least-squares approximation

arguments
    A (:,:) {mustBeNumeric}
    b (:,1) {mustBeNumeric, mustHaveHeight(b,A)}
end

% Least squares solution formula
solution = (A' * A) \ (A' * b);

% Compute approximation using solution (already calculated above)
approx = A * solution;

% Least squares error formula: error is magnitude of the vector difference
% of b and the approximation
error = norm(b - approx);

end

% Checks if the sizes of A and b are compatible for matrix multiplication.
function mustHaveHeight(output_vec, mat)
height_A = size(mat,1);
if length(output_vec) ~= height_A
    eid = "Size:badLength";
    msg = "The vector's height is \%u but it should be \%u.";
    error(eid,msg,length(output_vec),height_A)
end
end
