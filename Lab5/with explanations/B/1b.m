% b. Assuming nothing is known about sigma, find a 100*(1-alpha)%
% confidence interval for the average number of files stored

% for a large sample, n>30, or normal underlying population
% miu is in (xbar - s/sqrt(n)*t_{1-alpha/2}, xbar - s/sqrt(n)*t_{alpha/2})
% where s is the sample standard deviation
% and the quantiles refer to the T(n-1) distribution


% on to computing the interval limits

% first compute the size of the sample and the mean
X = [7, 7, 4, 5, 9, 9, 4, 12, 8, 1, 8, 7, 3, 13, 2, 1, 17, 7,...
   12, 5, 6, 2, 1, 13, 14, 10, 2, 4, 9, 11, 3, 5, 12, 6, 10, 7];

n = length(X);
xbar = mean(X);

% now find alpha by entering a value of the confidence level
% alpha = 1 - confidence level

alpha = 1 - input("Input the confidence level: ");

% find the standard deviation
s = std(X);

% and the quantiles
t1 = tinv(1-alpha/2, n-1);
t2 = tinv(alpha/2, n-1);

% and now the limits of the confidence intervals

limit1 = xbar- s/sqrt(n)*t1;
limit2 = xbar - s/sqrt(n)*t2;

fprintf('The confidence interval for the average number of stored files  is: (%6.3f,%6.3f)\n',limit1,limit2);
