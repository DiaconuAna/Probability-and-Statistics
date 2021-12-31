% B. Confidence intervals
% In a study of the size of various computer systems, the random variable
% X, the number of files stored, is considered.

% a. Assuming that past experience indicates that sigma = 5, find a
% 100*(1-alpha)% confidence interval for the average number of stored files

X = [7, 7, 4, 5, 9, 9, 4, 12, 8, 1, 8, 7, 3, 13, 2, 1, 17, 7,...
   12, 5, 6, 2, 1, 13, 14, 10, 2, 4, 9, 11, 3, 5, 12, 6, 10, 7];

% sample size

n = length(X);

% Input the confidence level
alpha = 1 - input("Confidence level: ");

% sigma is the standard deviation : sqrt(variance(x))

sigma = 5;

% compute the mean of the sample (the average number of stored files)

avg = mean(X);

% compute the standard error

std_error = sigma/sqrt(n);

% now find the limits of the confidence interval for the population mean

limit1 = avg - std_error * norminv(1-alpha/2,0,1);
limit2 = avg - std_error * norminv(alpha/2,0,1);

fprintf('The confidence interval for the average number of stored files is is: (%6.3f,%6.3f)\n',limit1,limit2);


