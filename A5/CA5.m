% Computing Assignment #5
% Author: Andy Liu
% ID: 301472847

x = [0.0, 1.0, 2.0, 2.0, 3.0];
y = [0.0, 3.0, 3.0, 4.0, 5.0];
t = [0.0, 1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0, 10.0, 11.0, 12.0];

% x1 = []
% y1 = FOR PART B) STORE ALL THE POINTS AND DO THE SAME THING AS PREVIOUS QUESTION 

t_values = linspace(t(1), t(5), 100);
Rx = spline(t, x, t_values);
Sy = spline(t, y, t_values);
%r_s = spline(x, y, xi);

figure;
plot(t_values, Rx, 'LineWidth', 2);
xlabel('t');
ylabel('R(t)');
title('R(t) versus t');

% Plot S versus t
figure;
plot(t_values, Sy, 'LineWidth', 2);
xlabel('t');
ylabel('S(t)');
title('S(t) versus t');

% Plot S versus R
figure;
plot(Rx, Sy, 'LineWidth', 2);
xlabel('R(t)');
ylabel('S(t)');
title('S(t) versus R(t)');