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

syms x_syms;
pos_limit = limit(1./(1 + exp(-2*x_syms)), x_syms, Inf);
neg_limit = limit(1./(1 + exp(-2*x_syms)), x_syms, -Inf);
disp(['Limit as x approaches positive infinity: ', char(pos_limit)]);
disp('Use f+(x) = cos(x) + 1 for x > 0 to approximate f for large positive values of x');
disp(['Limit as x approaches negative infinity: ', char(neg_limit)]);
disp('Use f-(x) = cos(x) for x < 0 to approximate f for large negative values of x');
disp('  ');

x_pos = linspace(0, 6*pi, 10000);
y_pos = cos(x_pos) + 1;
plot(x_pos, y_pos, 'DisplayName', 'f+(x) = cos(x) + 1', 'LineWidth', 1.3);
x_neg = linspace(-6*pi, 0, 10000);
y_neg = cos(x_neg);
plot(x_neg, y_neg, 'DisplayName', 'f-(x) = cos(x)', 'LineWidth', 1.3);
legend('show', 'FontSize', 10);
hold off;

func_y = @(x) cos(x) + 1./(1 + exp(-2*x));
[r, niter, rlist] = bisect2(func_y, [-4, 0], 0.000001);
disp(['Root (r): ', num2str(r), ', Number of iterations: ', num2str(niter)]);
%disp('List of intermediate results:');
%disp(num2str(rlist));

[r1, niter1, rlist1] = bisect2(func_y, [3, 3.15], 0.000001);
[r2, niter2, rlist2] = bisect2(func_y, [3.15, 3.25], 0.000001);
[r3, niter3, rlist3] = bisect2(func_y, [9, 10], 0.000001);
[r4, niter4, rlist4] = bisect2(func_y, [15, 16], 0.000001);
disp(['Root (r1): ', num2str(r1), ', Number of iterations: ', num2str(niter1)]);
disp(['Root (r2): ', num2str(r2), ', Number of iterations: ', num2str(niter2)]);
disp(['Root (r3): ', num2str(r3), ', Number of iterations: ', num2str(niter3)]);
disp(['Root (r4): ', num2str(r4), ', Number of iterations: ', num2str(niter4)]);

fp_func = @(x) acos(-1./(1 + exp(-2*x)));
[xfinal, fpiter, xlist] = fixedpt( fp_func, -1.5, 0.000001 );
[xfinal1, fpiter1, xlist1] = fixedpt( fp_func, 3.0, 0.000001 );
disp(['Fixed Point Root (): ', num2str(xfinal), ', Number of iterations: ', num2str(fpiter)]);
disp(['Fixed Point Root (): ', num2str(xfinal1), ', Number of iterations: ', num2str(fpiter1)]);