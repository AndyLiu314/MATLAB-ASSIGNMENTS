% Computing Assignment #1
% Author: Andy Liu
% ID: 301472847

% Q1: EXACT RESULT
x = linspace(0, 4, 1000);
n_values = [1,2,3,4,5,6];
line_colors = [
    0.00, 0.45, 0.74;  % Blue
    0.85, 0.33, 0.10;  % Red
    0.93, 0.69, 0.13;  % Yellow
    0.49, 0.18, 0.56;  % Purple
    0.47, 0.67, 0.19;  % Green
    0.00, 0.00, 0.00   % Black
];

for i = 1:length(n_values)
    n = n_values(i);
    y = (x - 2).^n;  % f(x) = (x - 2)^n
    plot(x, y, 'DisplayName', ['n = ' num2str(n)], 'Color', line_colors(i, :));
    hold on;
end

% Add labels and title
xlabel('x');
ylabel('f(x)');
title('Plot of f(x) = (x - 2)^n for n = 1, 2, 3, 4, 5, 6');
legend('show');
grid on;

% Set axis limits
xlim([0, 4]);
ylim([-5,5]);

expand_a = 12;
expand_n = 5;
expand_x = 7;
result = fexpand(expand_a, expand_n, expand_x);
disp(['f(', num2str(expand_x), ') = ', num2str(result)]);
