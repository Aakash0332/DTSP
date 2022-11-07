clc,
N=input('Enter the length of the filter')
wc=input('Enter the cutoff freq.')
alpha=(N-1)/2
for n=0:N-1
 if(n==alpha) then
 hd(n+1)= wc/%pi
 else
 hd(n+1)= (sin(wc*(n-alpha)))/(%pi*(n-alpha))
 end
end
for n=0:N-1
 w(n+1)=1
 wh(n+1)= 0.54-0.64*cos((2*%pi*n)/(N-1))
 
end
for n=0:N-1
 h1(n+1)=hd(n+1)*w(n+1)
 h2(n+1)=hd(n+1)*wh(n+1)
end
disp('filter coefficient using rectangular window function are',h1)
[hz1,fr1] = frmag(h1,100)
figure
plot(fr1,hz1)
title('freq. response of FIR LPF using rect. window')
xlabel('normalized freq. W')
ylabel('Magnitude')
[hz2,fr2] = frmag(h2,100)
figure
plot(fr2,hz2)
title('freq. response of FIR LPF using hamming window')
xlabel('normalized freq. W')
ylabel('Magnitude')
