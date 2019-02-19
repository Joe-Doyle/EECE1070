%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Joseph Doyle, UML Spring '19%
%EECE 1070-821 Lab           %
%Lab 2 Part 2                %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

load('EECE1070.mat') %load the data
plot(xvals,yvals2,'*r') %plot the raw data

fit1 = polyfit(xvals,yvals2,1) %find the fit coeficients
fit2 = polyfit(xvals,yvals2,2)
fit3 = polyfit(xvals,yvals2,3)

t1 = polyval(fit1, xvals) %create the fitted vectors
t2 = polyval(fit2, xvals)
t3 = polyval(fit3, xvals)

plot(xvals,yvals2,'*r',xvals,t1,'m',xvals,t2,'k',xvals,t3,'b')
legend('data','1st degree','2nd degree','3rd degree')
title("1st, 2nd, and 3rd degree fit of data",'fontsize',18,'fontname','times')
%save plot as png for report
print('-dpng','-r300','Part 2')

rms1 = sqrt((mean((yvals2-t1).^2)))
rms2 = sqrt((mean((yvals2-t2).^2)))
rms3 = sqrt((mean((yvals2-t3).^2)))