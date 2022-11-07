//inputs [1,2,3] & [1,2]
clc;
x=input("enter first sequence :")
h=input("enter second sequence :")
N1=length(x)
N2=length(h)
N=N1+N2-1
x=[x zeros(1,N2-1)]
h=[h zeros(1,N1-1)]
for n=1:N
y1(n)=0
for k=1:N
if (n-k+1)>0
y1(n)=y1(n)+x(k)*h(n-k+1)
end;
end;
disp ("Linear convolution using direct formula",y1)
end;
X=fft(x,-1)
H=fft(h,-1)
Y2=X.*H
Y2=fft(Y2,1)
disp("linear Convolution using DFT & IDFT",Y2)
