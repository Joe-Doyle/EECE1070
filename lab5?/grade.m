function g = grade(points)
% function grade(points)
% Programmers: Joseph Doyle
% Date: 3/2/19
% Input: number of points
% Output: letter grade with + or - as needed
% grade() computes a letter grade from given points
% dependencies: plus_minus()
if (points>=510)
    g = ['A',plus_minus(points,540,570)]
elseif (points>=420 && points <510)
    g = ['B',plus_minus(points,450,480)]
elseif (points>=360 && points<420)
    g = ['C',plus_minus(points,380,400)]
elseif (points>=300 && points<360)
    g = ['D',plus_minus(points,320,340)]
elseif (points<300)
    g = ['E']
end