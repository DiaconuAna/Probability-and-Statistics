% b. Assuming nothing is known about sigma (the standard deviation), find a
% 100*(1-alpha)% confidence interval for the average number of stored files

% compute the mean and the standard deviation for X

X = [7, 7, 4, 5, 9, 9, 4, 12, 8, 1, 8, 7, 3, 13, 2, 1, 17, 7,...
   12, 5, 6, 2, 1, 13, 14, 10, 2, 4, 9, 11, 3, 5, 12, 6, 10, 7];

% sample size

n = length(X);

% compute the average number of stored files

avg = mean(X);

% input the confidence level

alpha = 1 - input("Confidence level: ");

% compute the standard deviation

s = std(X);

% compute the standard e

std_error = s/sqrt(n);

% compute the limits of the interval

limit1 = avg - std_error * tinv(1-alpha/2, n-1);
limit2 = avg - std_error * tinv(alpha/2, n-1);

fprintf('The confidence interval for the average number of stored files is is: (%6.3f,%6.3f)\n',limit1,limit2);
