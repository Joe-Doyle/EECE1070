%Excercise 1 Equation of a straight line
x = [0 1.5 3 4 5 7 9 10]
y = 0.5*x - 2

%Excercise 2 Multiply, divide, and exponentiate vectors
t = 1:10
x = t.*sin(t)
y = (t-1)./(t+1)
z = sin(t.^2)./(t.^2)

%Excercise 3 Points on a circle
theta = [0;pi/4;pi/2;3*pi/4;pi;5*pi/4]
r = 2
x = r*cos(theta)
y = r*sin(theta)
sqrt(x.^2 + y.^2)

%Excercise 4 The geometric series
n = 0:10
r = 0.5
x = r.^n
s1 = sum(x)
n = 0:50
x = r.^n
s2 = sum(x)
n = 0:100
x = r.^n
s3 = sum(x)

%Excercise 5 Matrices and vectors
v = 0:0.2:12
M = [sin(v); cos(v)]
size(v)
size(M)
M(:,1:10)'



