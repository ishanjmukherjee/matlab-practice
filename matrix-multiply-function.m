function result = matrix_multiply(matrix1, matrix2)
    % # of cols in matrix1 must equal # of rows in matrix2
    if size(matrix1, 2) ~= size(matrix2, 1)
        error("Dimensions don't agree for matrix multiplication.")
    end

    % Personal rule of thumb: if computing same value twice, store in a 
    % variable
    matrix1_rows = size(matrix1, 1);
    matrix2_cols = size(matrix2, 2);
    
    % Preallocate result
    result = zeros(matrix1_rows, matrix2_cols);
    
    % Dot iith row of matrix 1 with jjth column of matrix2, store result in
    % result(ii, jj)
    for ii = 1:matrix1_rows
        for jj = 1:matrix2_cols
            result(ii, jj) = matrix1(ii,:) * matrix2(:,jj);
        end
    end
end
