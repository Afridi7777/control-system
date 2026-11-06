
clc;
clear;
close all;

L = 0.5;
C = 0.02;

Rcrit = 2*sqrt(L/C);

Rvals = [2 Rcrit 2.5*Rcrit];

figure;
hold on;

for k = 1:length(Rvals)
    R = Rvals(k);
    G = tf(1,[L*C R*C 1]);
    step(G);
end

grid on;
legend('Underdamped','Critical','Overdamped',...
       'Location','southeast');

title('Effect of Resistance on RLC Step Response');
xlabel('Time (s)');
ylabel('Normalized Capacitor Voltage');

hold off;
