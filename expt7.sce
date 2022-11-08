clc;
N = input('Enter the length:')
Wc = input('Enter the cutoff frequency: ')
alpha = (N-1)/2
for n = 0: N-1
    if (n == alpha)
        hd(n+1)=Wc/%pi
    else
        hd(n+1)=(Wc/%pi)*(sin(Wc*(n-alpha))/(Wc*(n-alpha)))
    end
end
for n = 1: N
    Wr(n)=1//Rectangular
//    Whm(n)= 0.5 - 0.5*cos(2*%pi*n/(N-1))//Hamming
    Whn(n)= 0.54- 0.46*cos(2*%pi*n/(N-1))//Hanning
//    Wb(n)= 0.42 - 0.5*cos(2*%pi*n/(N-1))+0.08*cos(4*%pi*n/(N-1))//blackman 
end
for n = 1: N
    h1(n)=hd(n)*Wr(n)
//    h2(n)=hd(n)*Whm(n)
    h3(n)=hd(n)*Whn(n)
//    h4(n)=hd(n)*Wb(n)
end

[H1,f1]=frmag(h1,100)
figure(1)
plot(f1,H1)

//[H2,f2]=frmag(h2,100)
//figure(2)
//plot(f2,H2)

[H3,f3]=frmag(h3,100)
figure(3)
plot(f3,H3)

///[H4,f4]=frmag(h4,100)
///figure(4)
///plot(f4,H4)
