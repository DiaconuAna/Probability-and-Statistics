% B. Confidence intervals - theory

% 1. In a study of the size of various computer systems, the random variable
% X, the number of files stored is considered. 

% a. Assuming that past experience indicates that sigma = 5 (the stanard
% deviation), find a 100*(1-alpha)% confidence interval for the average
% number of stored files.

% average number => CI for a population mean, miu
% sigma = 5 => sigma is known
% 1-alpha = confidence level => alpha = 1 - confidence level
% alpha = significance level

% the 100(1-alpha)% CI for a large sample, n>30 or normal underlying
% population and sigma known

% miu in (xbar - sigma/sqrt(n)*z_{1-alpha/2}, xbar -
% sigma/sqrt(n)*z_{alpha/2}
% where
% xbar is the mean, n is the size of the sample
% sigma is the standard deviation
% z_{1-alpha/2}, z_{alpha/2} are quantiles referring to the N(0,1)
% distribution

% on to computing the interval limits

% first compute the size of the sample and the mean
X = [7, 7, 4, 5, 9, 9, 4, 12, 8, 1, 8, 7, 3, 13, 2, 1, 17, 7,...
   12, 5, 6, 2, 1, 13, 14, 10, 2, 4, 9, 11, 3, 5, 12, 6, 10, 7];

n = length(X);
xbar = mean(X);

% now find alpha by entering a value of the confidence level
% alpha = 1 - confidence level

alpha = 1 - input("Input the confidence level: ");

% sigma is 5
sigma = 5;

% and now compute the quantiles referring to the N(0,1) distribution
n1 = norminv(1-alpha/2,0,1);
n2 = norminv(alpha/2,0,1);

% now compute the confidence limits

limit1 = xbar - sigma/sqrt(n)*n1;
limit2 = xbar - sigma/sqrt(n)*n2;

fprintf('The confidence interval for the average number of stored files is is: (%6.3f,%6.3f)\n',limit1,limit2);





