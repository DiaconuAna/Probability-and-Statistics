% c. Find a 100*(1-alpha)% confidence interval for the ratio of the
% variances

% for the ratio of two population variances, sigma_1^2/sigma_2^2, for
% normal underlying populations and independent samples
% sigma_1^2/sigma_2^2 in (1/f_{1-alpha/2}*s_1^2/s_2^2,
% 1/f_{alpha/2}*s_1^2/s_2^2)
% where the quantiles refer to the F(n1-1, n2-1) distribution

% sigma_1^2, sigma_2^2 - the population variances
% s_1^2, s_2^2 - the sample variances


X1 = [22.4, 21.7,24.5,23.4,21.6,23.3,22.4,21.6 ,24.8,20.0];
X2 = [17.7, 14.8,19.6, 19.6, 12.1, 14.8,15.4, 12.6,14.0 ,12.2];

% compute the size of the samples

n1 = length(X1);
n2 = length(X2);

% compute the sample variances s_1^2 and s_2^2

var1 = var(X1);
var2 = var(X2);

% find alpha by entering a value of the confidence level
% alpha = 1 - confidence level

alpha = 1 - input("Input the confidence level: ");

% compute the quantiles

f1 = finv(1-alpha/2, n1-1, n2-1);
f2 = finv(alpha/2, n1-1, n2-1);

% compute the limits of the confidence intervals

limit1 = 1/f1*var1/var2;
limit2 = 1/f2*var1/var2;

fprintf('The confidence interval for the ratio of the variances is: (%6.3f,%6.3f)\n',limit1, limit2);
fprintf('The confidence interval for the ratio of the standard deviations is: (%6.3f,%6.3f)\n',sqrt(limit1), sqrt(limit2));
