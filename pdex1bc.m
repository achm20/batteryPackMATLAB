function [pL,qL,pR,qR] = pdex1bc(xl,Tl,xr,Tr,t)
%Set spatial boundary conditions
pL = 0;
h = 10;
Tinf = 303;
sigma = 5.67*10^-8;
qL = 1;

pR = h*(Tr - Tinf) + sigma*(((Tr)^4)-((Tinf)^4));
k = 0.2;
qR = k;

