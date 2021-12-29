% Generate a Pascal Distribution NB(n, p)
% A Pascal NB(n,p) variable is the sum of n independent Geo(p) variables

% generate a Pascal variable
n = input("Input number of successes: ");
p = input("Input probability of success: ");


% generate n independent geometric Geo(p) variables)
for i = 1:n
    Y(i) = 0;
    while rand >= p
        Y(i) = Y(i) + 1;
    end
end

X = sum(Y)

% generate the Pascal distribution

N = input("Input number of simulations: ");

for i = 1:N
    for j = 1:n
        Y(j)=0;
        while rand >= p
            Y(j) = Y(j)+1;
        end
        X(i) = sum(Y);
    end
end

U_X = unique(X)
frequency = hist(X, U_X)
relative_frequency = frequency/N

