function [r, theta] = rect2polar(x, y)

%rect2polar(x,y) Convert point from Cartesian to polar coordinates
% Function rect2polar converts a point (x,y) in Cartesian coordinates to
% (r, theta) in polar coordinates.
%
% Calling sequence:
%   [r, theta] = rect2polar(x, y)
%
% Define variables:
%   x       -- x-coordinate of point
%   y       -- y-coordinate of point
%   r       -- distance of point from origin
%   theta   -- angle point makes with x-axis

r = sqrt(x^2+y^2);
theta = acos(x/r);
