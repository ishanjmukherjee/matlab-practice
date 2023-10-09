% EoMP Example 5.1
% Problem statement:
% Calculate the factorial of a user-inputted number using a for loop.

n = input("n: ");
if n < 0
    fprintf("The factorial is undefined for your input.\n")
else
    fac_n = 1;
    for ii = 1:n
        fac_n = ii * fac_n;
    end
    fprintf("n! = %i\n", fac_n);
end
