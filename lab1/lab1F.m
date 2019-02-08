%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Joseph Doyle, UML Spring '19%
%EECE 1070-821 Lab           %
%Lab 2F                      %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

x = [-6 -6 -7 0 7 6 6 -3 -3 0 0;-7 2 1 8 1 2 -7 -7 -2 -2 -7]

plot(x(1,:),x(2,:),'r.')
%save plot as png for report
print('-dpdf','-r300','Part1Fb')

plot(x(1,:),x(2,:),'r-')
%save plot as png for report
print('-dpdf','-r300','Part1Fc')

A1 = [0.5 0;0 1]
A2 = [1 0;0 0.5]
A3 = [0 1;0.5 0]
A4 = [0.5 0;0 -1]
A5 = [0 0 0;0 0 0]

C = [A1;A2;A3;A4]
D = C*x

plot(D(1,:),D(2,:),'r-')
%save plot as png for report? doesn't say to
%print('-dpdf','-r300','Part1Fd')

D1 = A1*x
plot(D1(1,:),D1(2,:),'r-')
hold on
D1 = A2*x
plot(D1(1,:),D1(2,:),'r-')
D1 = A3*x
plot(D1(1,:),D1(2,:),'r-')
D1 = A4*x
plot(D1(1,:),D1(2,:),'r-')

%save plot as png for report? doesn't say to
%print('-dpdf','-r300','Part1Fd1')

