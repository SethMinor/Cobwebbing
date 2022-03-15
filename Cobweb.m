%% Cobwebbing function

% This guy will (attempt) to take in an orbit (of a certain seed-value,
% given some discrete dynamical system) and spit out the corresponding
% cobweb plot of the system. Yehaw!

function [] = cobweb(orbit, F, x_l, x_u, y_l, y_u, figure_no)
    % orbit = vectorized orbit of the initial condition we're cobwebbing
    % F = update rule for the discrete dynamical system
    % x_l = lower x bound
    % x_u = upper x bound
    % y_l = lower y bound
    % y_u = upper y bound
    % figure_no = figure number, for keeping track of plots
    
    % How many points are in our obit?
    N = size(orbit);
    n = N(2); % this many
    
    % Plotting...
    % First, we have to do the identity
    figure (figure_no)
    identity =@(x) x;
    x_axis = x_l:0.01:x_u;
    plot(x_axis, identity(x_axis), '--b')
    grid on
    hold on
    plot(x_axis, F(x_axis),'-k','LineWidth',1.5)
    xlim([x_l, x_u])
    ylim([y_l, y_u])
    hold on
    
    % (and label things)
    s1 = string(figure_no);
    s2 = string(orbit(1));
    title("Cobweb Plot "+s1+" ($x_0=$"+s2+")",'fontsize',13,...
        'interpreter','latex')
    xlabel('$x_n$','fontsize',12,'interpreter','latex')
    ylabel('$x_{n+1}$','fontsize',12,'interpreter','latex')
    hold on
    
    % Plotting the cobwebs
    for i=1:n-1
        if i==1 % seed value
            
            plot([orbit(1) orbit(1)],[0 orbit(2)],'-r')
            hold on
            plot([orbit(1) orbit(2)],[orbit(2) orbit(2)],'-r')
            hold on
            
        else
            
            plot([orbit(i) orbit(i)],[orbit(i) orbit(i+1)],'-r')
            hold on
            plot([orbit(i) orbit(i+1)],[orbit(i+1) orbit(i+1)],'-r')
            hold on
            
        end
    end
end
