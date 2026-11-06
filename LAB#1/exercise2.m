K = 1;
tau_values = [1 2 5 10];

figure;
hold on;

for tau = tau_values
    G = tf(K,[tau 1]);
    step(G);
end

grid on;
legend('tau=1','tau=2','tau=5','tau=10');
title('Effect of Time Constant');
xlabel('Time (s)');
ylabel('Output');

hold off;