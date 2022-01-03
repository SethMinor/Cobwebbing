% EXAMPLES
% *See 'k_iterate(...)' and 'cobweb(...)' functions

clear, clc, clf;

%% First example,  where x_[n+1]=2x_n

% Our update rule is
F_1 =@(x) 2*x;
% F'(x)=2, so we should expect divergence for x =/= 0.

% Iterated k times, this looks like...
x_0 = 0.01;
k = 9;
[x_k, orbit] = k_iterate(x_0, F_1, k); %#ok<*ASGLU> 
display(orbit);
num_figure = 1;
cobweb(orbit, F_1, -0.5,1.6,-0.5,1.6, num_figure);
% So, our first update rule diverges.


%% Second example, where x_[n+1]=2x(1-x)

% Our update rule is now
F_2 =@(x) 2.*x.*(1-x);
% Looks like there is a sink at x=1/2.

% For a variety of initial conditions, we get...
x_0 = 0.01;
k = 9;
[x_k, orbit] = k_iterate(x_0, F_2, k);
display(orbit);
num_figure = 2;
cobweb(orbit, F_2, -0.1,0.6,-0.1,0.6, num_figure);
% Looks like this guy converges to the sink at x=1/2.

x_0 = 0.8;
k = 10;
[x_k, orbit] = k_iterate(x_0, F_2, k);
display(orbit);
num_figure = 3;
cobweb(orbit, F_2, -0.1,1.2,-0.5,1, num_figure);
% Looks like this guy also converges to the sink at x=1/2.

x_0 = 1.1;
k = 4;
[x_k, orbit] = k_iterate(x_0, F_2, k);
display(orbit);
num_figure = 4;
cobweb(orbit, F_2, -2,2,-4,4, num_figure);
% This initial condition definitely diverges.

x_0 = -0.01;
k = 10;
[x_k, orbit] = k_iterate(x_0, F_2, k);
display(orbit);
num_figure = 5;
cobweb(orbit, F_2, -0.5,0.5,-0.6,0.6, num_figure);
% Negative seed values seem to diverge for this example, in general.


%% Example three, where x_[n+1]=(3x-x^3)/2

% Our update rule is now
F_3 =@(x) (3.*x-x.^3)/2;

% Again, we're gonna look at a variety of initial conditions...
x_0 = 1.6;
k = 10;
[x_k, orbit] = k_iterate(x_0, F_3, k);
display(orbit);
num_figure = 6;
cobweb(orbit, F_3, -2,2,-2,2, num_figure);
% Converges to a sink at x=1.

x_0 = 1.8;
k = 10;
[x_k, orbit] = k_iterate(x_0, F_3, k);
display(orbit);
num_figure = 7;
cobweb(orbit, F_3, -2,2,-2,2, num_figure);
% Converges to a sink at x=-1.

x_0 = -0.01;
k = 13;
[x_k, orbit] = k_iterate(x_0, F_3, k);
display(orbit);
num_figure = 8;
cobweb(orbit, F_3, -2,2,-2,2, num_figure);
% Converges to a sink at x=-1.

x_0 = 0.01;
k = 13;
[x_k, orbit] = k_iterate(x_0, F_3, k);
display(orbit);
num_figure = 9;
cobweb(orbit, F_3, -2,2,-2,2, num_figure);
% Converges to a sink at x=1.
