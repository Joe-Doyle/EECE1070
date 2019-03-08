function c = cheby(n)
% function cheby(n)
% Programmers: Joseph Doyle
% Date: 3/2/19
% Input: desired Chebyshev polynomial
% Output: nth Chebyshev polynomial in vector format
% cheby() computes the nth Chebyshev polynomial
c0 = [1];
c1 = [1,0];
i = 1;
if n==0
    c = c0;
elseif n==1
    c = c1;
else
    ci2 = c0;
    ci1 = c1;
    while i < n
        i = i + 1;
        ci = add1(2.*ci1,-ci2);
        ci2 = ci1;
        ci1 = ci;
        c = ci;
    end
end