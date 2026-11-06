%task#1 %%%%%%



clc;
clear;
close all;

K = 2;
tau = 5;

G = tf(K, [tau 1]);

figure;
step(G);
grid on;

title('Unit-Step Response: G(s) = 2/(5s + 1)');
xlabel('Time (s)');
ylabel('Output y(t)');

system_pole = pole(G)
steady_state_gain = dcgain(G)
response_info = stepinfo(G)


