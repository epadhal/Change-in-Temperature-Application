% Change in Temperature Aplication
% DEfine the constant
k = 0.1;
T0 = 20;
hold on
for Ti = 0:10:100
[t,T] = ode45(@(t,T) k*(T0-T), [0 50], Ti);
plot(t,T)
end
title("Temperature vs time for different initial Temperatures")
xlabel("Time(s)")
ylabel("Temperature(c)")
