function pm = plus_minus(points, lpoint, hpoint)
% function plus_minus(points, lowPoint, highPoint)
% Programmers: Joseph Doyle
% Date: 3/2/19
% Input: number of points, low and high thresholds for plus and minus
% Output: plus or minus for a letter grade
% plus_minus computes the appended + or - if needed for a letter grade
if points<lpoint
    pm = '-'
elseif points>hpoint
    pm = '+'
else
    pm = ''
end