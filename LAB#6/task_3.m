
clc;
clear;
close all;

R = 4;
L = 0.8;
C = 0.0125;

% Transfer function
G = tf(1, [L*C R*C 1]);

disp('Transfer Function:');
G

% System parameters
wn = 1/sqrt(L*C);
zeta = (R/2)*sqrt(C/L);

disp('Natural Frequency:');
disp(wn);

disp('Damping Ratio:');
disp(zeta);

disp('Poles:');
pole(G)

disp('Damping Verification:');
damp(G)

disp('DC Gain:');
dcgain(G)

disp('Step Response Metrics:');
stepinfo(G)

% Step response
figure;
step(G);
grid on;
title('RLC Circuit Step Response');
xlabel('Time (seconds)');
ylabel('Capacitor Voltage (V)');

% Pole-zero map
figure;
pzmap(G);
grid on;
title('RLC Circuit Pole-Zero Map');
