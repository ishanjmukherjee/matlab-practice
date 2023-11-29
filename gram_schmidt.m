function orth_basis = gram_schmidt(A)
%orth_basis Finds an orthonormal basis for the column space of A

% The first basis vector is by convention the first vector in A
orth_basis = A(:,1);

% Iterate over every column in A
for ii = 2:size(A,2)
    % Store ii-th column of A in vec
    vec = A(:,ii);
    
    % Initialize potential new orthogonal basis vec as vec
    orth_vec = vec;
    
    % Iterate over all orthogonal basis vecs
    for jj = 1:size(orth_basis,2)
        % Subtract projection of ii-th column of A on the orthogonal basis
        % vec under consideration, from the potential new orthogonal basis
        % vec
        v = orth_basis(:,jj);
        orth_vec = orth_vec - ((vec' * v) / (v' * v)) * v;
    end
    
    % If potential new orthogonal basis vec is all zeros, the ii-th column
    % of A was linearly dependent and doesn't get a corresponding
    % orthogonal basis vec.
    % To test if potential new orthogonal basis is all zeros, check if it's
    % "close enough" to the zero vector rather than checking strict
    % equality to the zero vector. The latter would fall prey to MATLAB's 
    % roundoff errors.
    if norm(orth_vec) > 1e-10
        
        % Add new orthogonal basis vec to the set of orthogonal basis vecs
        orth_basis = [orth_basis orth_vec];
    end
end

% Orthonormalization: divide each entry by the length of the vector it's in
orth_basis = orth_basis ./ sqrt(sum(orth_basis .^ 2,1));
