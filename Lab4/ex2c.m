% generate the Geometric distribution
% hint: a geometric Geo(p) variable represents the number of failures (the
% number of failed Bernoulli trials) needed to get the first success

% generate X - Geo(p)

p = input("Input probability of success in (0,1): ");

X=0;

% count the number of failures - (U<p) = 0 where U is the random generated
% number - we do it using rand here, that occur before the first success
while(rand >= p)
    X = X+1;
end


% generate the distribution

N = input("Input the number of simulations: ");

for i = 1:N
    
    X(i)=0;
    while(rand >= p)
        X(i) = X(i) + 1;
    end
    
end

U_X = unique(X) %extract the  unique values
frequency = hist(X, U_X) %compute their frequency
relative_frequency = frequency/N

% compare the simulation and the binomial distribution
xpdf = 0:N;
ypdf = geopdf(xpdf, p);

tiledlayout(2,1);
nexttile
plot(xpdf, ypdf, "g*");
title("Geometric distribution");

nexttile
plot(U_X, relative_frequency, "r*");
title("Simulation of geometric distribution");
