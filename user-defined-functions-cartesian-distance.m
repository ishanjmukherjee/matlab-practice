function distance = dist2(x1, y1, x2, y2)

%dist2 Calculate the distance between two points
% Function dist2 calculate the distance between two points (x1, y1) and
% (x2, y2) in a Cartesian coordinate system.
% 
% Calling sequence:
%   distance = dist2(x1, y1, x2, y2)
% 
% Define variables:
%   x1  -- x-coordinate of point 1
%   y1  -- y-coordinate of point 1
%   x2  -- x-coordinate of point 2
%   y2  -- y-coordinate of point 2

distance = sqrt((x2-x1)^2 + (y2-y1)^2);
