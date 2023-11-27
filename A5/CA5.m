% Computing Assignment #5
% Author: Andy Liu
% ID: 301472847

x = [0.0, 1.0, 2.0, 2.0, 3.0];
y = [0.0, 3.0, 3.0, 4.0, 5.0];
t = [0.0, 1.0, 2.0, 3.0, 4.0];
t1 = [0.0, 1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0, 10.0, 11.0, 12.0];
x1 = [2.75, 1.3, -0.25, 0.0, 0.25, -1.3, -2.5, -1.3, 0.25, 0.0, -0.25, 1.3, 2.75];
y1 = [-1.0, -0.75, 0.8, 2.1, 0.8, -0.25, 0.0, 0.25, -1.3, -2.5, -1.3, -0.25, -1.0];
per_t = t1.';
per_x = x1.';
per_y = y1.';

t_values = linspace(t(1), t(end), 1000);
t_values1 = linspace(t1(1), t1(end), 1000);
Rx = spline(t, x, t_values);
Sy = spline(t, y, t_values);
Rx1 = spline(t1, x1, t_values1);
Sy1 = spline(t1, y1, t_values1);

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

figure;
plot(Rx1, Sy1, 'LineWidth', 2);
xlabel('x');
ylabel('y');
title('S(t) versus R(t)');

per_Rx = perspline(per_t, per_x);
per_Sy = perspline(per_t, per_y);
figure;
plot(per_Rx, per_Sy, 'LineWidth', 2);
xlabel('R(t)');
ylabel('S(t)');
title('Periodic S(t) versus R(t)');