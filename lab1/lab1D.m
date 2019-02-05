%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Joseph Doyle, UML Spring '19%
%EECE 1070-821 Lab           %
%Lab 2D                      %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

x = 1: .1: 12;
y = exp(sin(x));
plot (x,y,'g-*');
hold on;
y=exp(cos(x));
plot(x,y,'r-')
title('2D Graphics');
xlabel('The X axis');
ylabel('The Y axis');