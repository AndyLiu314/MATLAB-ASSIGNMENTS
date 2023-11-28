% Computing Assignment #5
% Author: Andy Liu
% ID: 301472847

x = [0.0, 1.0, 2.0, 2.0, 3.0]; y = [0.0, 3.0, 3.0, 4.0, 5.0]; t = [0.0, 1.0, 2.0, 3.0, 4.0];
t1 = [0.0, 1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0, 10.0, 11.0, 12.0];
x1 = [2.75, 1.3, -0.25, 0.0, 0.25, -1.3, -2.5, -1.3, 0.25, 0.0, -0.25, 1.3, 2.75];
y1 = [-1.0, -0.75, 0.8, 2.1, 0.8, -0.25, 0.0, 0.25, -1.3, -2.5, -1.3, -0.25, -1.0];

tvalues = linspace(t(1), t(end), 1000); Leaf_tvalues = linspace(t1(1), t1(end), 1000); % T-values
Rx = spline(t, x, tvalues); Sy = spline(t, y, tvalues); % Interpolating Rx and Sy
Rx1 = spline(t1, x1, Leaf_tvalues); Sy1 = spline(t1, y1, Leaf_tvalues); % Interpolating the leaf
per_Rx = perspline(t1, x1); per_Sy = perspline(t1, y1); % Periodic interpolation

figure; % R v t
plot(t_values, Rx, 'LineWidth', 2);
xlabel('t');
ylabel('R(t)');
title('Cubic Spline: R(t) versus t');
figure; % S v t
plot(t_values, Sy, 'LineWidth', 2);
xlabel('t');
ylabel('S(t)');
title('Cubic Spline: S(t) versus t');
figure; % S v R
plot(Rx, Sy, 'LineWidth', 2);
xlabel('R(t)');
ylabel('S(t)');
title('Cubic Spline: S(t) versus R(t)');
figure; % 4 Leaf Not-a-knot
plot(Rx1, Sy1, 'LineWidth', 2);
xlabel('x');
ylabel('y');
title('Four Leaf: S(t) versus R(t)');
figure; % 4 Leaf periodic
plot(per_Rx, per_Sy, 'LineWidth', 2);
xlabel('R(t)');
ylabel('S(t)');
title('Periodic 4 Leaf: S(t) versus R(t)');

load('mysignature.mat')
n = numel(drawx);
drawt = 0:(n-1);
drawx = drawx.';
drawy = drawy.';
drawrx = perspline(drawt, drawx);
drawsy = perspline(drawt, drawy);
figure;
plot(drawrx, drawsy, 'LineWidth', 2);
xlabel('R(t)');
ylabel('S(t)');
title('My Signature');