%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Joseph Doyle, UML Spring '19%
%EECE 1070-821 Lab           %
%Lab 8                       %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

numbers = input('Enter Seven Digit Phone Number:')
digit=str2double(regexp(num2str(numbers),'\d','match'))
Fs=10000;
t=0:1/Fs:1;

for n=1:7 %for all 7 digits, play each tone
    if digit(n)==1
            onelow=cos(2*pi*697*t);
            onehigh=cos(2*pi*1209*t);
            one=(onelow+onehigh)/2;
            soundsc(one,Fs);
            plot(t(1:300),one(1:300),'r'); title('1 Tone')
            figure
    elseif digit(n)==22
            twolow=cos(2*pi*697*t);
            twohigh=cos(2*pi*1336*t);
            two=(twolow+twohigh)/2;
            soundsc(two,Fs);
    elseif digit(n)==3
            threelow=cos(2*pi*697*t);
            threehigh=cos(2*pi*1477*t);
            three=(threelow+threehigh)/2;
            soundsc(three,Fs);
            plot(t(1:300),three(1:300),'r'); title('3 Tone')
            figure
    elseif digit(n)==4
            fourlow=cos(2*pi*770*t);
            fourhigh=cos(2*pi*1209*t);
            four=(fourlow+fourhigh)/2;
            soundsc(four,Fs);
    elseif digit(n)==5
            fivelow=cos(2*pi*770*t);
            fivehigh=cos(2*pi*1336*t);
            five=(fivelow+fivehigh)/2;
            soundsc(five,Fs);
    elseif digit(n)==6
            sixlow=cos(2*pi*770*t);
            sixhigh=cos(2*pi*1477*t);
            six=(sixlow+sixhigh)/2;
            soundsc(six,Fs);
    elseif digit(n)==7
            sevenlow=cos(2*pi*852*t);
            sevenhigh=cos(2*pi*1209*t);
            seven=(sevenlow+sevenhigh)/2;
            soundsc(seven,Fs);
    elseif digit(n)==8
            eightlow=cos(2*pi*852*t);
            eighthigh=cos(2*pi*1336*t);
            eight=(eightlow+eighthigh)/2;
            soundsc(eight,Fs);
    elseif digit(n)==9
            ninelow=cos(2*pi*852*t);
            ninehigh=cos(2*pi*1477*t);
            nine=(ninelow+ninehigh)/2;
            soundsc(nine,Fs);
    elseif digit(n)==0
            zerolow=cos(2*pi*941*t);
            zerohigh=cos(2*pi*1336*t);
            zero=(zerolow+zerohigh)/2;
            soundsc(zero,Fs);
    elseif digit(n)==11 %star
            starlow=cos(2*pi*941*t);
            starhigh=cos(2*pi*1209*t);
            star=(starlow+starhigh)/2;
            soundsc(star,Fs);
            plot(t(1:300),star(1:300),'r'); title('Star Tone')
            figure
    elseif digit(n)==22 %pound
            poundlow=cos(2*pi*941*t);
            poundhigh=cos(2*pi*1447*t);
            pound=(poundlow+poundhigh)/2;
            soundsc(pound,Fs);
            plot(t(1:300),pound(1:300),'r'); title('Pound Tone')
            figure
    end
    pause(.95);
    z=zeros(1,100000);
    soundsc(z,Fs);
end

%Ringing tone
Fs=10000; 
t=0:1/Fs:2;
i=0;
w1=cos(2*pi*350*t)
w2=cos(2*pi*440*t)
wsum=(w1+w2)/2
soundsc(wsum,Fs)
plot(t(1:300),wsum(1:300),'r'); title('Ringing Tone')
figure

%Ringing signal tone
while i<4
    i=i+1;
    y1=cos(2*pi*440*t);
    y2=cos(2*pi*480*t);
    ysum=(y1+y2)/2;
    soundsc(ysum,Fs);
    plot(t(1:300),ysum(1:300),'r'); title('Ringing Signal Tone')
    figure
    pause(2)
    g=zeros(1,Fs);
    soundsc(g,Fs)
    pause(4)
end

%Busy Tone
while i<5
    i=i+1;
    y3=cos(2*pi*480*t);
    y4=cos(2*pi*620*t);
    y2sum=(y3+y4)/2;
    soundsc(y2sum,Fs);
    plot(t(1:300),y2sum(1:300),'r'); title('Busy Tone')
    pause(0.75)
    soundsc(g,Fs)
    pause(1.5)
end
