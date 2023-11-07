% Computing Assignment #4: exp_approx.m
% Author: Andy Liu
% ID: 301472847

function expA = exp_approx(A, k)
    n = size(A, 1);
    expA = eye(n);
    Ak = eye(n);
    for i = 1:k
        Ak = Ak * A / i;
        expA = expA + Ak;
    end
end