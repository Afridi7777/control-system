tau = 5;
K_values = [0.5 1 2 5];

figure;
hold on;

for K = K_values
    G = tf(K,[tau 1]);
    step(G);
end

grid on;
legend('K=0.5','K=1','K=2','K=5');
title('Effect of Gain K');
xlabel('Time (s)');
ylabel('Output');

hold off;