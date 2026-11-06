
clc;
clear;
close all;

R = 2;
L = 0.5;
C = 0.02;

G = tf(1,[L*C R*C 1]);

wn = 1/sqrt(L*C);
zeta = (R/2)*sqrt(C/L);

disp('Transfer Function:');
G

disp('Natural Frequency:');
wn

disp('Damping Ratio:');
zeta

disp('Poles:');
pole(G)

disp('Damping Information:');
damp(G)

disp('DC Gain:');
dcgain(G)

disp('Step Response Information:');
stepinfo(G)

figure;
step(G);
grid on;
title('Series RLC: Capacitor Voltage Step Response');
xlabel('Time (s)');
ylabel('Capacitor Voltage (V)');
