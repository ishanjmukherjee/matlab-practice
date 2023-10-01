# MATLAB is inconsistent

 - `linspace(start,end)` generates 100 equally spaced points starting at `start` and ending at `end`. But `logspace(start,end)` produces _50_ equally spaced points on a logarithmic scale starting at `start` and ending at `end`.
 - If you want to address an entry in a matrix with a single number, MATLAB counts top to bottom _then_ left to right. For example, if `A = [1 2 3; 4 5 6; 7 8 9]`, `A(4)` returns `2`. But the `subplot` function numbers subplots from left to right _then_ top to bottom. For example, `subplot(2,3,4)` divides the figure into six regions in two rows and three columns, and creates an axis in the lower left subplot, instead of the lower middle.
