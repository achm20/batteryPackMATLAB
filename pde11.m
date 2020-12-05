%function pdex11

m = 1;
R = 0.009;
A = pi*2*R*0.065;
Tinf = 303;
sigma = 5.67*10^-8;
h = 10;

n = 2;
switch n
    case 1
        %Standard charging
        tend = 13500;
    case 2
        %Fast charging
        tend = 3710;
    case 3
        %Discharging
        tend = 2108;
end 
r = linspace(0,R,400);
t = linspace(0,tend,10000);

sol = pdepe(m,@pdex1pde,@pdex1ic,@pdex1bc,r,t);
% Extract the first solution component as u.
Temperature = sol(:,:,1);

figure;
mesh(r,t,Temperature);
xlabel('Distance r (m)')
ylabel('Time t (s)')
zlabel('Temperature (K)');

figure;
plot(r,Temperature(end,:));
xlabel('Distance r (m)')
ylabel('Temperature (K)');

figure;
plot(r,ans);
xlabel('Distance r (m)')
ylabel('Temperature (K)');
grid on

figure;
plot(t,Temperature(:,1));
xlabel('Time t (s)')
ylabel('Temperature (K)');
grid on

%q = (h*A*((Temperature(end,end)-Tinf)))+(sigma*A*((Temperature(end,end)^4)-Tinf^4));
