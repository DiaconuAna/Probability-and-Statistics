% Lab6 - Hypothesis and significance testing for means and variances

% find the rejection rejection, the value of the test statistic and the
% P-value of the test. Make it clear what H0 and H1 are and interpret the
% result in words.

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

% a. Assuming that past experience indicates that sigma=5, at the 5%
% significance level, does the data suggest that the standard is met? What
% about at 1%?

% Matlab : [H,P,CI,ZVAL] = ztest(X,M,SIGMA,ALPHA,TAIL)

% Input parameters:
%	X, M, SIGMA - are compulsory
%
%	X - vector with selection data
%	M - the given value (in our case, 9)
%	SIGMA - the population standard deviation (in our case, 5)
%	ALPHA - the significance level
%	TAIL - specifies whether we have a left, right or two-tailed test
%				 -1 - left
%				 1 - right
%				 0 - two-tailed

% Output parameters:

%	H - indicator that tells us if we reject or do not reject H_0
%	P - critical value of the test (print it on the screen)
%	CI - confidence interval ( in the sense of the taken test. ex: left-tailed test -> (-inf, quantile) )
%	   careful if and when you use the command to find the confidence intervals
%	ZVAL - TS_0 (print it on the screen)


% part1: alpha = 0.05, the significance level
alpha = 0.05;

x = [7, 7, 4, 5, 9, 9, 4, 12, 8, 1, 8, 7, 3, 13, 2, 1, 17, 7,...
   12, 5, 6, 2, 1, 13, 14, 10, 2, 4, 9, 11, 3, 5, 12, 6, 10, 7];
n = length(x);

% H0 - the null hypothesis - miu = 9 because in our case theta is miu
% and a computer meets the efficiency standard when it stores more than 9 files on average

miu = 9;

% H1 - the research hypothesis - the opposite of H0
% H1: miu < 9 => left-tailed test : -1

sigma = 5; %the standard deviation

fprintf("We are doing a left-tailed test for the mean (sigma known)\n");

% for the population mean which has a large sample (n>30) and sigma known
% TT = (Xbar - miu)/(sigma/sqrt(n)) in N(0,1)
% N(0,1) => ztest

% declare the value of the known parameter
M0 = 9;

[H,P,CI,ZVAL] = ztest(x, M0, sigma, alpha, -1);

% build the rejection region
% RR = (-inf, tt_alpha)
% tt_alpha is the quantile for the normal distribution

tt_alpha = norminv(alpha);
RR = [-inf, tt_alpha]; % vector with 2 positions 


% result of the test, h = 0, if H0 is NOT rejected,
% h = 1, if H0 IS rejected
fprintf('\n H is %d', H)
if H == 1 
    fprintf('\nSo the null hypothesis is rejected,\n')
    fprintf('i.e. the data suggests that the standard IS NOT met.\n')
else
    fprintf('\nSo the null hypothesis is not rejected,\n')
    fprintf('i.e. the data suggests that the standard IS  met.\n')
end   

% print ZVAL, P and RR on the screen

fprintf('\nThe rejection region is (%4.4f, %4.4f)\n', RR)
fprintf('The value of the test statistic z is %4.4f\n', ZVAL)
fprintf('The P-value of the test is %4.4f\n\n', P)

% output for significance level alpha = 0.05
% We are doing a left-tailed test for the mean (sigma known)

% H is 1
% So the null hypothesis is rejected,
% i.e. the data suggests that the standard IS NOT met.
 
% The rejection region is (-Inf, -1.6449)
% The value of the test statistic z is -2.2667
% The P-value of the test is 0.0117


