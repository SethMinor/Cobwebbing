%% Iteration Function

% Let's make a little function that updates our system, given a function
% of the form 'F(xn, paramters u)' such that F: x_n --> x_[n+1].

function [x_new, orbit] = k_iterate(x_0, F, k, varargin)
    % x0 = our initial state (x_n, for n=0)
    % x_new = our updated state (x_[n+1])
    % orbit = a vector full of x_0's orbit under the system
    % k = number of iterations
    % F = update rule for the dynamical system (looks like F(xn,u)-ish)
    % varargin = our list of parameters (u), if we have any
    
    orbit = zeros(1, k+1);
    
    % Initially,
    x_n = x_0;
    orbit(1) = x_0;
    fprintf('Initially, our seed-value is x_0 = %.2f\n', x_0)
    
    % Then we update, using a for-loop
    for i=1:k
        x_new = F(x_n, varargin{:});
        orbit(i+1) = x_new;
        fprintf('Iteration %.f... F^%.f(x0) = x_%.f = %.2f\n',...
            i, i, i, x_new)
        x_n = x_new;
    end
    
end
