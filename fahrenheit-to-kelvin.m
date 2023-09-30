% EoMP Example 2.3
% Problem statement: 
% Design a MATLAB program that reads an input temperature in degrees 
% Fahrenheit, converts it into an ansolute temperature in kelvin, and 
% writes out the result.

fahr = input("Enter temperature in degrees Fahrenheit: ");
kelv = (fahr-32)*5/9+273.15;
fprintf("The temperature is %.3f Kelvin\n", kelv);
