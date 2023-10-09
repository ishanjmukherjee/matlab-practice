% EoMP Section 5.3
% Problem statement:
% For any given matrix, replace every element greater than 5 with that
% element's square root. For your first implementation, use a for loop. For
% your second implementation, use logical arrays and vectorization.

a = input("matrix: ");

% Implementation using for loop
for ii = 1:size(a, 1)
    for jj = 1:size(a, 2)
        elem = a(ii, jj);
        if elem > 5
            a(ii, jj) = sqrt(elem);
        end
    end
end
fprintf("The modified matrix is:\n");
disp(a);

% Implementation using a logical array and vectorization.
b = a > 5;
a(b) = sqrt(a(b));
fprintf("The modified matrix is:\n");
disp(a);
