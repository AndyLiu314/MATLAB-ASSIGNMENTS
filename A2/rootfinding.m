% Computing Assignment #2
% Author: Andy Liu
% ID: 301472847
x_og = linspace(-6*pi, 6*pi, 10000);
y_og = cos(x_og) + 1./(1 + exp(-2*x_og));
plot(x_og, y_og, 'DisplayName', 'f(x) = cos(x) + 1/(1 + e^{-2x})','LineWidth', 1.3);
hold on;
title('f(x) = cos(x) + 1/(1 + e^{-2x}) on the interval -6\pi to 6\pi');
xlabel('x');
ylabel('f(x)');
grid on;
xlim([-6*pi, 6*pi]); 

syms x;
pos_limit = limit(1./(1 + exp(-2*x)), x, Inf);
neg_limit = limit(1./(1 + exp(-2*x)), x, -Inf);
disp(['Limit as x approaches positive infinity: ', char(pos_limit)]);
disp('Use f+(x) = cos(x) + 1 for x > 0 to approximate f for large positive values of x');
disp(['Limit as x approaches negative infinity: ', char(neg_limit)]);
disp('Use f-(x) = cos(x) for x < 0 to approximate f for large negative values of x');

x_pos = linspace(0, 6*pi, 10000);
y_pos = cos(x_pos) + 1;
plot(x_pos, y_pos, 'DisplayName', 'f+(x) = cos(x) + 1', 'LineWidth', 1.3);
x_neg = linspace(-6*pi, 0, 10000);
y_neg = cos(x_neg);
plot(x_neg, y_neg, 'DisplayName', 'f-(x) = cos(x)', 'LineWidth', 1.3);
legend('show', 'FontSize', 10);
hold off;

