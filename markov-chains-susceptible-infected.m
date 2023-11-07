function state = si(init_s, init_i, days, beta)
%si Calculates and plots susceptible and infected population over time 
%based on nonlinear Markov model.
% init_s    : Initial fraction of population that is susceptible.
% init_b    : Initial fraction of population that is infected.
% days      : Number of days to calculate and plot for.
% beta      : Contagiousness factor.
% Based on these state update equations:
% I(k+1)    = (beta * I(k)) * S(k)      +       I(k)
% S(k+1)    = (1 - beta * I(k)) * S(k)  +   0 * I(k)
% The first equation means that a fraction of S(k), ie, susceptible
% population at time k, depending on a contagiousness factor beta times
% I(k), ie, infected population at time k, become infected. Infected people
% at time k stay infected at time (k+1).

% Note that s_init must be a column vector to perform matrix
% multiplication.
state_init = [init_s, init_i]';

% Intially, the transition matrix looks like this:
%           S                   I
% S     1 - beta * I(1)     beta * I(1)
% P         0                   1  
P = [(1-beta*init_i) (beta*init_i); 0 1];

% Preallocating state vector to be (num of competitors) tall and years 
% long.
state = zeros(size(state_init,1), days);

% First column of state vector is the initial state
state(:,1) = state_init;

for ii = 2:days
    % Based on the Markov update equation: s(k+1) = P' * s(k)
    % Each new state vector is stored as a new column of the variable state
    state(:,ii) = P' * state(:,(ii-1));

    % Updating transition matrix for next iteration.
    % Recall that the that the transition matrix which will be used to
    % compute state(k+1) must look like:
    %           S                   I
    % S     1 - beta * I(k)     beta * I(k)
    % P         0                   1
    P(1, [1 2]) = [(1 - beta * state(2,ii)), beta * state(2,ii)];
end

figure();
% Starting x at 0, not 1, to look nice
plot(0:(days-1),state);
% By default, y is between init_a and init_b; correct for this.
ylim([0 1]); 
legend("Susceptible", "Infected");
xlabel("Days");
ylabel("Fraction of population");
