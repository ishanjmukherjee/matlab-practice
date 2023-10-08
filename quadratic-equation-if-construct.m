% EoMP Example 4.2 
% Problem statement: 
% Solve for the roots of a quadratic equation.

% Get user inputs for coefficients of the quadratic equation.
a = input("a: ");
b = input("b: ");
c = input("c: ");

% Calculate discriminant.
discr = b^2 - 4*a*c;

% Calculate roots of the equation using the discriminant.
root1 = (-b + sqrt(discr))/(2*a);
root2 = (-b - sqrt(discr))/(2*a);

% Print roots with appropriate message after checking the value of the
% discriminant.
if discr == 0
    fprintf("The equation has two identical real roots, %.4f\n", root1);
elseif discr > 0
    fprintf("The equation has two distinct real roots, %.4f and %.4f\n", root1, root2);
else
    fprintf("The equation has two distinct complex roots, %.4f+%fj and %.4f+%fj\n", real(root1), imag(root1), real(root2), imag(root2));
end
