clc;
for i=1:4
n=input("Enter order of filter:")
ftype='lp'  //(lp,bp,hp,sb)
fdesign='butt'  //(cheb1,cheb2)
frq=[0.3,0]  //for bp & sb [0.2,0.3]
ripple=[0.08 0.02]
[Hz]=iir(n,ftype,fdesign,frq,ripple)
[Hw fr]=frmag(Hz,100)
subplot(2,2,i)
plot(fr,Hw)
xtitle('Magnitude response','Frequency-->','Gsin in dB-->')
end
