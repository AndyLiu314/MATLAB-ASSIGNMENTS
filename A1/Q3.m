% Computing Assignment #1: Q3
% Author: Andy Liu
% ID: 301472847

delta_values = [0.5, 0.05, 0.005];
n_values = [15, 21];
y_limits = [[-0.1, 0.25]; [-0.00001, 0.000025]; [-0.000001, 0.0000025]; [-0.05, 0.05]; [-0.005, 0.005]; [-0.0005, 0.0005]];

% Define the x-intervals for zooming in near x = 2
x_intervals = cell(length(delta_values), 1);
for i = 1:length(delta_values)
    delta = delta_values(i);
    x_intervals{i} = linspace(2 - delta, 2 + delta, 100);
end

figure;
plot_legend = cell(length(delta_values) * length(n_values), 1);
plot_index = 1;

for n_index = 1:length(n_values) % 2 loops that create plots for each n and delta
    n = n_values(n_index);
    for delta_index = 1:length(delta_values) 
        delta = delta_values(delta_index);
        x = x_intervals{delta_index};
        
        % Calculate y using the fexpand function
        y = fexpand(2, n, x);  % Here, a = 2
        
        subplot(length(delta_values), length(n_values), plot_index);
        plot(x, y, 'LineWidth', 1.2);
        title(['f(x) expanded, ', 'n = ', num2str(n), ', delta = ', num2str(delta)]);
        xlabel('x');
        ylabel('f(x)');
        grid on;

        if (n_index == 2) % chooses limits based on plot to better show lines
            limit = y_limits(delta_index + 3, :); 
        else 
            limit = y_limits(delta_index, :); 
        end
        ylim([limit(1), limit(2)]);

        plot_legend{plot_index} = ['n = ', num2str(n), ', delta = ', num2str(delta)];
        plot_index = plot_index + 1;
    end
end