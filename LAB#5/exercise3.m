
clc;
clear;
close all;

% Required specifications
K = 2.5;
Ts = 8;

% Calculate time constant
tau = Ts/4;

% Create transfer function
G = tf(K, [tau 1]);

% Display results
disp('Transfer Function:');
G

disp('Time Constant:');
tau

disp('System Pole:');
pole(G)

disp('DC Gain / Final Value:');
dcgain(G)

disp('Step Response Information:');
stepinfo(G)

% Plot unit-step response
figure;
step(G);
grid on;
title('First-Order System Response');
xlabel('Time (seconds)');
ylabel('Output');
