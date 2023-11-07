function state = market_share(init_a, init_b, years, f_ab, f_ba)
%market_share Calculates and plots market share of two competitors over
%time based on Markov model.
% init_a    : Initial market share of competitor A
% init_b    : Initial market share of competitor B
% years     : Number of years to calculate and plot for (50 is often more
%             than enough)
% f_ab      : Fraction of A's customers switching to B every year
% f_bc      : Fraction of B's customers switching to A every year
% Inspired by Example 10.1.1 in https://math.libretexts.org/Bookshelves/Applied_Mathematics/Applied_Finite_Mathematics_(Sekhon_and_Bloom)/10%3A_Markov_Chains/10.01%3A_Introduction_to_Markov_Chains

% Note that s_init must be a column vector to perform matrix
% multiplication.
s_init = [init_a, init_b]';
P = [(1-f_ab) f_ab; f_ba (1-f_ba)];

% Preallocating state vector to be (num of competitors) tall and years 
% long.
state = zeros(size(s_init,1), years);

% First column of state vector is the initial state
state(:,1) = s_init;

for ii = 2:years
    % Based on the Markov update equation: s(k+1) = P' * s(k)
    % Each new state vector is stored as a new column of the variable state
    state(:,ii) = P' * state(:,(ii-1));
end

figure();
% Starting x at 0, not 1, to look nice
plot(0:(years-1),state);
% By default, y is between init_a and init_b; correct for this.
ylim([0 1]); 
legend("A", "B");
xlabel("Years");
ylabel("Market share");
