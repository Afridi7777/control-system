
clc;
clear;
close all;

format compact;

% Nominal system values
R = 25e3;
C = 10e-6;

% 1. Create transfer function
T = tf(1, [R*C 1]);

% 2. Calculate time constant
Tc = R*C;

% 3. Calculate rise time (10% to 90%)
Tr = log(9)*Tc;

% 4. Calculate settling time (2% criterion)
Ts = -log(0.02)*Tc;

% 5. Calculate resistor for settling time of 0.1 seconds
R2 = 0.1/(-log(0.02)*C);

% 6. Create new transfer function
T2 = tf(1, [R2*C 1]);

% Display results
disp('Original transfer function T(s):');
T

disp('Time constant Tc:');
Tc

disp('Rise time Tr:');
Tr

disp('Settling time Ts:');
Ts

disp('New resistor R2:');
R2

disp('New transfer function T2(s):');
T2

% Plot response to 10 V step input
figure;
step(10*T);
hold on;
step(10*T2);
grid on;
title('Response to 10 V Step Input');
xlabel('Time (seconds)');
ylabel('Output Voltage (V)');
legend('Original T(s)', 'New T2(s)');
hold off;
