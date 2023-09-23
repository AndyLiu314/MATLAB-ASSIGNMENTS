% Computing Assignment #1
% Author: Andy Liu
% ID: 301472847

function fx = fexpand(a, n, x)
    % Check for invalid inputs
    if ~isnumeric(a) || ~isnumeric(n) || ~isnumeric(x) || n < 0 || floor(n) ~= n
        error('Inputs a, n, and x must be numeric, and n must be a non-negative integer.');
    end
    
    % Initialize the polynomial value
    fx = 0;
    
    % Compute the expanded form using the binomial theorem
    for k = 0:n
        binomial_coeff = nchoosek(n, k);
        fx = fx + (-a).^k * binomial_coeff * x.^(n - k);
    end
end



