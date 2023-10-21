function [root, niter, xlist] = newton( func, pfunc, xguess, tol, maxiter )
%NEWTON     Newton's method for solving a nonlinear equation.
%
%   Sample usage:
%     [root, niter, xlist] = newton( func, pfunc, xguess, [tol], [maxiter] )
%
%   Input:
%     func   - function to be solved
%     pfunc  - derivative of 'func'
%     xguess - initial guess at root
%     tol    - convergence tolerance (OPTIONAL, defaults to 1e-6)
%     maxiter- maximum number of iterations (OPTIONAL, defaults to 30) 
%
%   Output:
%     root   - final estimate of the root 
%     niter  - number of iterations until converged
%     xlist  - list of iterates, an array of length 'niter'

% First, do some error checking on parameters.
if nargin < 3
  fprintf(1, 'NEWTON: must be called with at least three arguments' );
  error('Usage:  [root, niter, xlist] = newton(func, pfunc, xguess, [tol], [maxiter])');
end
if nargin < 4, tol  = 1e-6; end
if nargin < 5, maxiter = 30; end

x    = xguess;
fx   = func(x);
fpx  = pfunc(x);
if( fx == 0 | fpx == 0 ) 
  error( 'NEWTON: both f and f'' must be non-zero at the initial guess' );
end

xlist= [ x ];
done = 0;
niter = 0;
while( ~done )
  x0  = x;
  x   = x0 - fx / fpx;
  fx  = func(x);
  fpx = pfunc(x);
  xlist = [ xlist; x ];   % add to the list of x-values 
  niter = niter + 1;
  % Stopping tolerance based on relative error 
  if (abs(x-x0)/(eps+abs(x)) < tol & abs(fx) < tol) ...
        | niter >= maxiter,
    done = 1;
  end
end

root = x;
%END newton.