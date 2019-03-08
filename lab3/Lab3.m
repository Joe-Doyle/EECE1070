%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Joseph Doyle, UML Spring '19%
%EECE 1070-821 Lab           %
%Lab 3                       %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Part A Section 1
fs = 10000; %10,000hz
f0 = 200; %f0 200 Hz
t = 0:1/fs:10;
%Part A Section 2
y0 = cos(2*pi*f0*t);
plot(t(1:500),y0(1:500),'r');
title('First Sine Harmony');
%Subsection a
SpectrumAnalyzer(y0,fs);
title('Spectrum F0'); 
%Subsection b
soundsc(y0,fs); %Creates the sound
%Part A Section 3
f1=400;
y1=cos(2*pi*f1*t);
plot (t(1:500),y0(1:500),'r',t(1:500),y1(1:500),'b');
title('Second Sine Harmony')
%creates sinusoid at 400hz
%Subsection a
SpectrumAnalyzer(y1,fs);
title('Spectrum f1');
soundsc(y1,fs);
%Subsection b
hold on
%Part B
for k=3
    y0=y0+(sin(k*pi/2)/k)*cos(2*pi*k*f0*t);
    plot(t(1:500),y0(1:500)); title('1st Squarewave Harmony')
end
SpectrumAnalyzer(y0,fs);%3
for k=1:2:5
    y0=y0+(sin(k*pi/2)/k)*cos(2*pi*k*f0*t);
    plot(t(1:500),y0(1:500)); title('2nd Squarewave Harmony')
end
SpectrumAnalyzer(y0,fs);%1 through 5 terms
for k=1:2:7
    y0=y0+(sin(k*pi/2)/k)*cos(2*pi*k*f0*t);
    plot(t(1:500),y0(1:500)); title('3rd Squarewave Harmony')
end
SpectrumAnalyzer(y0,fs); %1 through 7 terms
for k=1:2:13
    y0=y0+(sin(k*pi/2)/k)*cos(2*pi*k*f0*t);
    plot(t(1:500),y0(1:500)); title('4th Squarewave Harmony')
end
SpectrumAnalyzer(y0,fs); %1 through 13 terms
for k=1:2:21
    y0=y0+(sin(k*pi/2)/k)*cos(2*pi*k*f0*t);
    plot(t(1:500),y0(1:500)); title('4th Squarewave Harmony')
end
SpectrumAnalyzer(y0,fs); %1 through 21 terms
%creates for loops that add harmonic terms
soundsc(y1,fs)
y = filter(Num,1,y0);
plot(t:1:400),y0(1:400),'r';
SpectrumAnalyzer(y0,10000)
%Part D
load handel
sound(y,12000)