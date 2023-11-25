% Computing Assignment #4: CA4.m
% Author: Andy Liu
% ID: 301472847

load('CA4matrix2.mat');

expA50 = exp_approx(A, 50);
expA150 = exp_approx(A, 150);
imagesc(real(expA50));
colormap gray;
imagesc(real(expA150));
colormap gray;

% k_values = 5:5:150;
% cpu_time = zeros(length(k_values), 1);
% for i = 1:length(k_values)
%     tic;
%     exp_approx(A, k_values(i));
%     cpu_time(i) = toc;
% end 
% 
% plot(k_values, cpu_time);
% xlabel('k terms', 'FontSize', 14);
% ylabel('CPU Time (seconds)', 'FontSize', 14);
% title('CPU Time vs. Number of Terms in Series');
% 
% tic;
% expm(A);
% expm_time = toc; 
% 
% err = zeros(length(k_values), 1);
% expAexact = expm(A);
% for i = 1:length(k_values)
%     expAk = exp_approx(A, k_values(i));
%     err(i) = norm(expAexact-expAk, 2); 
% end
% semilogy(k_values, err);
% xlabel('k terms', 'FontSize', 14);
% ylabel('Error (2-norm)', 'FontSize', 14);
% title('Error vs. Number of Terms in Series');