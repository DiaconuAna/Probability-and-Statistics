% b. without the assumption on sigma, does the data suggest that, on
% average, the number of stored files exceeds 5.5? (same significance level
% alpha =0.05)

% H0 : miu = 5.5
% H1 : miu > 5.5 (the hypothesis we are interested in proving)
% => we perform a right-tailed test <=> tail = 1
% H1 states that the number of files stored exceeds 5.5

fprintf("We are doing a right-tailed test for the mean (sigma unknown)\n");


% since we want to perform a test for the population mean with a large
% sample, but no sigma known, we need to use ttest as TT in T(n-1)

% [h,p,ci,stats] = ttest(x,m,alpha,tail)

x = [7, 7, 4, 5, 9, 9, 4, 12, 8, 1, 8, 7, 3, 13, 2, 1, 17, 7,...
   12, 5, 6, 2, 1, 13, 14, 10, 2, 4, 9, 11, 3, 5, 12, 6, 10, 7];
n = length(x);

% the significance level alpha is 5%
alpha = 0.05;

% declare the value of the known parameter (the avg number of files stored)
m = 5.5;

[h, p, ci, stats] = ttest(x, m, alpha, 1);

% result of the test, h = 0, if H0 is NOT rejected,
% h = 1, if H0 IS rejected
fprintf('\n H is %d', h)
if h == 1 
    fprintf('\nSo the null hypothesis is rejected,\n')
    fprintf('i.e. the data suggests that the number of files stored exceeds 5.5.\n')
else
    fprintf('\nSo the null hypothesis is not rejected,\n')
    fprintf('i.e. the data suggests that the number of files stored does not exceed 5.5.\n')
end  

% build the rejection region
% RR = (tt_{1-alpha},inf)
% tt_alpha is the quantile for the T(n-1) distribution

tt_alpha = tinv(1-alpha, n-1);
RR = [tt_alpha, inf]; % vector with 2 positions 

% print ZVAL, P and RR on the screen

fprintf('\nThe rejection region is (%4.4f, %4.4f)\n', RR);
fprintf('The value of the test statistic z is %4.4f\n', stats.tstat);
fprintf('The P-value of the test is %4.4f\n\n', p);]

% output
% We are doing a left-tailed test for the mean (sigma unknown)

% H is 1
% So the null hypothesis is rejected,
% i.e. the data suggests that the number of files stored exceeds 5.5.

% The rejection region is (1.6896,  Inf)
% The value of the test statistic z is 2.3356
% The P-value of the test is 0.0127
