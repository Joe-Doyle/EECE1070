%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Joseph Doyle, UML Spring '19%
%EECE 1070-821 Lab           %
%Lab 2 Part 1                %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%part 1 section a
year = [1928 1932 1936 1948 1952 1956 1964 1968 1972 1976 ...
    1980 1984 1988 1992 1996 2000]
time = [12.2 11.9 11.5 11.9 11.5 11.5 11.4 11.08 11.07...
    11.08 11.06 10.97 10.54 10.82 10.94 10.75]

%plot time vs year
a = axes
set(a,'fontsize',18,'fontname','times')
plot(year, time,'-*','linewidth',1,'color','r','markersize',6)
hold on
xlabel('year','fontsize',18,'fontname','times')
ylabel('finishing time(sec)','fontsize',18,'fontname','times')
title("Women's 100-meter time versus year",'fontsize',18,'fontname','times')
%save plot as png for report
print('-dpng','-r300','Part 1(a)')

%part 1 section b
fit1=polyfit(year,time,1) %get the fit coefficients
best = polyval(fit1,year)

%part 1 section c
%plot the best fit
plot (year, best,'linewidth',1,'color','g','markersize',6)
%save plot as png for report
print('-dpng','-r300','Part 1(c)')

%part 1 section d
rms=(mean((time-best).^2))^.5;

%part 1 section e
plot (1960,11.0, "r*");
%plots 1960 100 meter winner
%save plot as png for report
print('-dpng','-r300','Part 1(e)')

predicted = polyval(fit1, 1960)
error = (abs(11.0-predicted)/predicted)*100

%part 1 section f
last = polyval(fit1,2004)
plot (2004, last,'linewidth',1,'color','g','markersize',6)
%= 10.5780 seconds. Compared to the 10.93 time recorded in 2004 the
%difference is 0.352 seconds.