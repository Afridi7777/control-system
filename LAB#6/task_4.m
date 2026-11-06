
clc;
clear;
close all;

% Required capacitance
C = 0.01;

% Design specifications
zeta = 0.7;
wn = 4;

% Calculate circuit components
L = 1/(C*wn^2);
R = 2*zeta*sqrt(L/C);

% Construct transfer function
G = tf(1, [L*C R*C 1]);

disp('Designed Resistance R (Ohms):');
disp(R);

disp('Designed Inductance L (Henries):');
disp(L);

disp('Transfer Function:');
G

disp('Poles:');
pole(G)

disp('Damping Verification:');
damp(G)

disp('DC Gain:');
dcgain(G)

% Verify actual MATLAB response metrics
info = stepinfo(G);

disp('Overshoot (%):');
disp(info.Overshoot);

disp('Settling Time (seconds):');
disp(info.SettlingTime);

disp('Rise Time (seconds):');
disp(info.RiseTime);

% Check design requirements
if info.Overshoot < 10 && info.SettlingTime <= 1.5
    disp('Design satisfies both specifications.');
else
    disp('Design does not satisfy both specifications.');
end

figure;
step(G);
grid on;
title('Designed RLC Step Response');
xlabel('Time (seconds)');
ylabel('Capacitor Voltage (V)');

figure;
pzmap(G);
grid on;
title('Designed RLC Pole-Zero Map');
