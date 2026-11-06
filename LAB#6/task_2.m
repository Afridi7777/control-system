
clc;
clear;
close all;

R = 8;
L = 0.5;
C = 0.02;

G = tf(1, [L*C R*C 1]);

disp('Transfer Function:');
G

disp('Natural Frequency and Damping Ratio:');
wn = 1/sqrt(L*C);
zeta = (R/2)*sqrt(C/L);

disp(wn);
disp(zeta);

disp('Poles:');
pole(G)

disp('Damping Verification:');
damp(G)

disp('DC Gain:');
dcgain(G)

disp('Step Response Information:');
stepinfo(G)

figure;
step(G);
grid on;
title('Underdamped RLC Step Response');
xlabel('Time (seconds)');
ylabel('Capacitor Voltage (V)');
