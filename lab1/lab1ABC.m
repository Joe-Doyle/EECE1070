%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Joseph Doyle, UML Spring '19%
%EECE 1070-821 Lab           %
%Lab 2ABC                    %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Part A
a = 3
b = [2 3]
c = [5;1]
d = [1 2;3 4] 
e = [1 3;2 4] 
f = eye(2)

%Part B
g=a*b
h=a*d
k=b*c
l=c*b
m=b.*c
n=d*e
n1=e.*d
n2=d.*e
n3=b*d
%N=d*b the size of the matrices are mismatched
M=a*e
O=e*a
p=e.*a
q=e*f

%Part C
odd_up   = 1:2:99
odd_down = 99:-2:1
minus_one = cos(pi*odd_up)
plus_minus = cos(pi*(0:49))

