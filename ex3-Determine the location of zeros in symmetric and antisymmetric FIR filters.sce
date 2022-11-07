//SE 4 [1,2,2,1] or AE 4 [1,2,-2,-1] or AO 5 [1,2,0,-2,-1]
clc;
z=poly(0,'z')
N=input('Enter the length of linear phase FIR filter :')
h=input('Enter the cofficient of linear phase FIR filter :')
//n=length(h)
H=[0]
for n = 1:N
    H = H+h(n)*[z^(-n+1)]
end
disp(H)
[z p k]=tf2zp(H)
figure,plzr(H)
