%2. Using a standard uniform random number generator, generate the common
%discrete probability distributions

%a. Bernoulli Distribution - Bern(p), p in (0,1)

% Generate X 
p = input("Input probability of success in (0,1): ");

if(p<0 || p>1)
    fprintf("Invalid value")
end

U = rand;
X = (U < p);

% Generate the Bernoulli distribution
N = input("Number of simulations: ")

for i = 1:N
    U = rand;
    X(i) = (U<p);
end

UX = unique(X)
fr = hist(X, length(UX))
relative_frequency = fr/N
