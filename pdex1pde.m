function [c,f,s] = pdex1pde(r,t,T,DTDr)
P = 2400;
C = 1000;
k = 0.2;
alpha = k/(P*C);
c = 1/alpha;
f = DTDr;
res = 0.02;

n = 2;
switch n
    case 1
        %Standard charging
        i = 1.7;
        tend = 7450;
    case 2
        %Fast charging
        i = 3.4;
        tend = 3710;
    case 3
        %Discharging
I = csvread('i-t_anton2.csv',1,0);
tI = I(:,1);
iI = I(:,2);
i = interp1(tI, iI, t);
tend = 2108;
end
disp(t);

R = 0.009;
L = 0.065;
u = (res*i.^2)/(pi*R.^2*L);
s = u/k;
