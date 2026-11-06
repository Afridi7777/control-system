
clc;
clear;
close all;

R = 4;
L = 1;
C = 0.1;

G = tf(1, [L*C R*C 1]);

disp('Transfer Function:');
G

disp('Poles:');
pole(G)

disp('DC Gain:');
dcgain(G)

disp('Damping and Natural Frequency:');
damp(G)

disp('Step Response Information:');
stepinfo(G)

figure;
step(G);
grid on;
title('Step Response of Series RLC Circuit');
xlabel('Time (seconds)');
ylabel('Capacitor Voltage (V)');

figure;
pzmap(G);
grid on;
title('Pole-Zero Map');
 