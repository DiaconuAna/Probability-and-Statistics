% c. Assuming the number of stored files are approximately normally
% distributed, find 100*(1-alpha)% confidence intervals for the variance
% and standard deviation

% for a normal underlying population
% sigma^2 in ( (n-1)*s^2/chi2_{1-alpha/2},(n-1)*s^2/chi2_{alpha/2} )
% sigma in sqrt( ((n-1)*s^2/chi2_{1-alpha/2},(n-1)*s^2/chi2_{alpha/2}) ) 
% where sigma^2 is the population variance
% s^2 is the sample variance
% sigma is the standard deviation

% first compute the size of the sample and the mean
X = [7, 7, 4, 5, 9, 9, 4, 12, 8, 1, 8, 7, 3, 13, 2, 1, 17, 7,...
   12, 5, 6, 2, 1, 13, 14, 10, 2, 4, 9, 11, 3, 5, 12, 6, 10, 7];

n = length(X);
xbar = mean(X);

% now find alpha by entering a value of the confidence level
% alpha = 1 - confidence level

alpha = 1 - input("Input the confidence level: ");

% compute the sample variance

variance = var(X);

% compute the chi square distributions

chi1 = chi2inv(1-alpha/2, n-1);
chi2 = chi2inv(alpha/2, n-1);

% now compute the confidence interval for the variance

limit1v = (n-1)*variance/chi1;
limit2v = (n-1)*variance/chi2;

fprintf('The confidence interval for the variance is: (%6.3f,%6.3f)\n',limit1v,limit2v);

% and for the standard deviation

fprintf('The confidence interval for the standard deviation is: (%6.3f,%6.3f)\n',sqrt(limit1v), sqrt(limit2v));








