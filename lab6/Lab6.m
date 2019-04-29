%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Joseph Doyle, UML Spring '19%
%EECE 1070-821 Lab           %
%Lab 6                       %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

f10 = 10000;
f0 = 1000;
f1 = 100;
%Part 1
dt = 1/fs
t = 0:dt:10
%Part 2
waveforms = cos(2*pi*f0*t)
plot(t(1:100),waveforms(1:100),'g')
title('Wave Z')
%Part 3
SpectrumAnalyzer(waveforms, f0)
title('Wave Z Spectrum Analysis')
figure
%Part 4
sin1 = cos(2*pi*f1*t)
plot(t(1:100),sin1(1:100),'g')
title('Sin1')
SpectrumAnalyzer(sin1, f1)
title('Sin1 Spectrum Analysis')
figure;
%Part 5
am = (1 + sin1).*waveforms
plot(t(1:300),am(1:300),'g')
title('AM Graph')
%Part 6
SpectrumAnalyzer(am, fs)
title('AM Spectrum Analysis')
figure
%Part 8
coh = am.*waveforms
plot(t(1:300),coh(1:300),'g')
title('Coherent Recovery')
%Part 9
SpectrumAnalyzer(coh, fs)
title('Coherent Spectrum Analysis')
figure
%Part 10
y = filter(num, 1, coh)
plot(t(1:300),y(1:300),'g')
title('Filtered Coherent')
soundsc(y, fs)
%Part 11
envelope = abs(am)
plot(t(1:300),envelope(1:300),'g')
title('Envelope Detection')
SpectrumAnalyzer(envelope,fs)
title('Envelope Spectrum Analysis')
figure
%Part 12
filter2 = filter(num, 1, envelope)
soundsc(envelope, 10000)
plot(fiter2(1000-2000))
