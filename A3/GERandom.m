% GERANDOM: Gaussian elimination for a random matrix.
%
%     Over a series of M trials, compute the solution to A*x = b
%     for an NxN random matrix A. Compute the mean/average error
%     over all M trial solutions and plot the results.
%
% YOU NEED MODIFY THIS CODE FOR CA3.

N = 10;  % matrix size
M = 100; % number of trials

delta = zeros(M,1);  % vector of errors
x = ones(N,1);       % exact solution vector
 
for k = 1 : M,
  A = 2*rand(N,N)-1; % random NxN matrix with entries in [-1, 1] 
  b = A * x;         % compute the right-hand side vector
  y = A \ b;         % approximate solution in floating-point
  delta(k) = max(abs(x-y)); % compute max-norm error
end

% Compute average error over all trials
EN = mean(delta)

% Plot the error using a log scale
semilogy(1:M, delta, 'bo')
title(['Error for ' num2str(M) ' random ' num2str(N) 'x' num2str(N) ' matrices'])
xlabel('N'), ylabel('Error')
grid on, shg
