%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Joseph Doyle, UML Spring '19%
%EECE 1070-821 Lab           %
%Lab 4 Part A                %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

points = input("Enter Student's Points: ")

while (points < 0) || (points > 600) %check that grade is within bounds
    points = input('Error out of bounds, please re-enter: ')
end

finalGrade = grade(points)