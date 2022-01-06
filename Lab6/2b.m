% b. Based on the result in part a., at the same significance level, does
% gas mileage seem to be higher, on average, when premium gasoline is used?

% H0 : premium_avg = regular_avg - the null hypothesis
% H1 : premium_avg > regular_avg - the alternative hypothesis => right-tailed test for the difference of
% means where
% miu1 = premium_avg
% miu2 = regular_avg

% we need to perform a test for the difference of two populations means
% with sigma_1 = sigma_2 unknown, 
% based on the result on part a. => the data suggests that the variances 
% are equal.

% we perform a ttest2
% [h,p,ci,stats] = ttest2(x,y,Name,Value)


X1 = [22.4, 21.7,24.5,23.4,21.6,23.3,22.4,21.6 ,24.8,20.0];
X2 = [17.7, 14.8,19.6, 19.6, 12.1, 14.8,15.4, 12.6,14.0 ,12.2];

% we input the significance level of 5%
alpha = 0.05;

% and perform the test

[h,p,ci,stats] = ttest2(X1, X2, alpha, 1);


% result of the test, h = 0, if H0 is NOT rejected,
% h = 1, if H0 IS rejected
fprintf('\n H is %d', h)
if h == 1 
    fprintf('\nSo the null hypothesis is rejected,\n')
    fprintf('i.e. the data suggests that the gas mileage is higher when premium gasoline is used.\n')
else
    fprintf('\nSo the null hypothesis is not rejected,\n')
    fprintf('i.e. the data suggests that the gas mileage is not higher when the premium gasoline is used.\n')
end

% build the rejection region
% RR = (tt_{1-alpha}, inf)
% tt_{1-alpha) is a quantile referring to T(n1+n2-2) distribution

tt = tinv(1-alpha, n1+n2-2);
RR = [tt, inf];


% print ZVAL, P and RR on the screen

fprintf('\nThe rejection region is (%4.4f, %4.4f)\n', RR);
fprintf('The value of the test statistic z is %4.4f\n', stats.tstat);
fprintf('The P-value of the test is %e\n', p);
