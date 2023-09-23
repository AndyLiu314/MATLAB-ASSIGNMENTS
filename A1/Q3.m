% Values of delta
delta_values = [0.5, 0.05, 0.005];

% Values of n
n_values = [1, 3];

% Define the x-intervals for zooming in near x = 2
x_intervals = cell(length(delta_values), 1);
for i = 1:length(delta_values)
    delta = delta_values(i);
    x_intervals{i} = linspace(2 - delta, 2 + delta, 1000);
end

% Plotting the expanded f(x) curves
figure;
plot_legend = cell(length(delta_values) * length(n_values), 1);
plot_index = 1;

for n_index = 1:length(n_values)
    n = n_values(n_index);
    
    for delta_index = 1:length(delta_values)
        delta = delta_values(delta_index);
        x = x_intervals{delta_index};
        
        % Calculate y using the fexpand function
        y = fexpand(2, n, x);  % Here, a = 1
        
        % Plotting
        subplot(length(delta_values), length(n_values), plot_index);
        plot(x, y);
        title(['n = ', num2str(n), ', delta = ', num2str(delta)]);
        xlabel('x');
        ylabel('f(x)');
        
        % Store the legend for the plot
        plot_legend{plot_index} = ['n = ', num2str(n), ', delta = ', num2str(delta)];
        
        plot_index = plot_index + 1;
    end
end