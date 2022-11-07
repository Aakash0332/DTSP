clc;
s=poly(0,'s')
z=poly(0,'z')
HS=5*s/((s+1)*(s+2))
T = 1
pf = pfss(HS)
for i=1:length(pf)
disp('factorized Hs =', pf(i))
end
[Z,P,K] = tf2zp(HS)
A1 = coeff(pf(1).num)
A2 = coeff(pf(2).num)
//IIM
HZ=(A1/(1-%e^(P(1))*T*z^(-1)))+(A2/(1-%e^(P(1))*T*z^(-1)))
disp('IIM:HZ = ', HZ)
HZ = horner(HS,(2/T)*(z-1)/(z+1))
disp('Replace S by (2/T)*(z-1)/(z+1)')
disp('BLT:H(z) = ', HZ)
