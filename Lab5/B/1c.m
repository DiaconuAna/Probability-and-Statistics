% c. Assuming the number of files stored are approximately normally
% distributed, find 100*(1-alpha)% confidence intervals for the variance
% and for the standard deviation


X = [7, 7, 4, 5, 9, 9, 4, 12, 8, 1, 8, 7, 3, 13, 2, 1, 17, 7,...
   12, 5, 6, 2, 1, 13, 14, 10, 2, 4, 9, 11, 3, 5, 12, 6, 10, 7];

n = length(X);
alpha = 1 - input("Confidence level: ");
s = var(X); % the standard deviations

% compute the limits of the confidence interval
limit1 = ((n-1)*s*s)/chi2inv(1-alpha/2, n);
limit2 = ((n-1)*s*s)/chi2inv(alpha/2,n);

fprintf('The confidence interval for the variance is: (%6.3f,%6.3f)\n',limit1,limit2);

