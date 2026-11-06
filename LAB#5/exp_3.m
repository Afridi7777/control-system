
% Lab Exercise 1: RC Circuit
clc;
clear;
close all;

format compact;

% Nominal system values
R = 25e3;
C = 10e-6;

% 1) Create the transfer function
T = tf(1, [R*C 1]);

% 2) Calculate the time constant
Tc = R*C;

% 3) Calculate the rise time (10% to 90%)
Tr = 2.2*Tc;

% 4) Calculate the 2% settling time
Ts = 4*Tc;

% 5) Calculate new resistor for Ts = 0.1 seconds
R2 = 0.1/(4*C);

% 6) Create the new transfer function
T2 = tf(1, [R2*C 1]);

% Display results
disp('Original transfer function:');
T

disp('Time constant Tc (seconds):');
Tc

disp('Rise time Tr (seconds):');
Tr

disp('Settling time Ts (seconds):');
Ts

disp('New resistor R2 (ohms):');
R2

disp('New transfer function T2:');
T2

% Compare responses to a 10V step input
figure;
step(10*T);
hold on;
step(10*T2);
grid on;
title('Response to 10V Step Input');
legend('Original T(s)', 'New T2(s)');
xlabel('Time (s)');
ylabel('Output Voltage (V)');
hold off;
