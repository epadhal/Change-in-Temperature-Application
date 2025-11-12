%RC Circut Application
%Define some constants
RC = 0.2;
vi = 2;
va = 10;
% Use ode45 to solve the differential equation
[~,V] = ode45(@(t,V) (va-V)/RC, [0 0.25],vi);
n = length(V);
fprintf("The voltage after 0.25s is %.2f V.\n",V(n))
% SOlve for voltage after 0.5s
[~,V] = ode45(@(t,V) (va-V)/RC, [0 0.5],vi);
n = length(V);
fprintf("The voltage after 0.5s is %.2f V.\n",V(n))
% Sove for voltage after 0.1s
[t,V] = ode45(@(t,V) (va-V)/RC, [0 1],vi);
n = length(V);
fprintf("The voltage after 1s is %.2f V.\n",V(n))
% Logicall comparison
near8v = V>7.9 & V<8.1;
time8v = t(near8v);
fprintf("It will take %.2f seconds for the voltage to reach 8V.\n",time8v)
plot(t,V)
ylim([0 10])
title("The Capacitor voltage in a RC Circut")
xlabel("Time(s)")
ylabel("The Voltage(v)")
grid on