
clc;
clear;
close all;

% Question 1
R1 = 10e3;
C1 = 100e-6;
tau1 = R1*C1;
G1 = tf(1, [tau1 1]);

% Question 2
R2 = 4.7e3;
C2 = 220e-6;
tau2 = R2*C2;
G2 = tf(1, [tau2 1]);

% Question 3
K3 = 2.5;
tau3 = 8/4;
G3 = tf(K3, [tau3 1]);

% Display results
disp('Question 1');
G1
tau1
dcgain(G1)
pole(G1)
stepinfo(G1)

disp('Question 2');
G2
tau2
dcgain(G2)
pole(G2)
stepinfo(G2)

disp('Question 3');
G3
tau3
dcgain(G3)
pole(G3)
stepinfo(G3)

% Plot responses
figure;
step(G1, G2, G3);
grid on;
legend('Question 1', 'Question 2', 'Question 3');
title('RC Low-Pass and First-Order Responses');
xlabel('Time (s)');
ylabel('Output');
