//[5,6,7,8] & 150
clc;
x=input("Enter the sequence :")
N=input("Enter the length of DFT :")
L=length(x)
x=[x zeros(1,N-L)]
for k=1:N
    X(k)=0
for n=1:N
    X(k)=X(k)+x(n)*exp((-%i*2*%pi*(n-1)*(k-1))/N)
end;
end;
disp("DFT of the input sequence",X)
[phase,mag]=phasemag(X)
subplot(2,1,1)
plot2d3(mag)
xtitle('mag response','K','mag(db)')
subplot(2,1,2)
plot2d3(phase)
xtitle('phasae response','T','phase')
