function a = add(x,y)
% function add(polynomial 1,polinomial 2)
% Programmers: Joseph Doyle
% Date: 3/2/19
% Input: 2 polynomials of any degree
% Output: sum of both polynomials
% add() sums two polynomials of similar or differing degrees
vec = size(x) - size(y);

if vec(2)<0
    x = [zeros(1,abs(vec(2))), x];
elseif vec(2) > 0
    y = [zeros(1,abs(vec(2))), y];
else
    end
a = x + y;
disp(a)
end