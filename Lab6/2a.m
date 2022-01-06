% 2. It is thought that the gas mileage obtained by a particular model of 
% automobile will be higher if unleaded premium gasoline is used in the 
% vehicle rather than
% regular unleaded gasoline. To gather evidence in this matter, 10 cars are randomly se-
% lected from the assembly line and tested using a specified brand of premium gasoline;
% 10 others are randomly selected and tested using the brand's regular gasoline. Tests
% are conducted under identical controlled conditions and gas mileages for both types
% of gas are assumed independent and (approximately) normally distributed. These
% data result:

%   Premium            Regular
% 22.4  21.7    |    17.7  14.8 
% 24.5  23.4    |    19.6  19.6 
% 21.6  23.3    |    12.1  14.8 
% 22.4  21.6    |    15.4  12.6 
% 24.8  20.0    |    14.0  12.2 

% a. At the 5% significance level, is there evidence that the variances of
% the two populations are equal?

% since there are 2 populations, we need a test for the ratio of variances
% (vartest2): [h,p,ci,stats] = vartest2(x,m,alpha,tail)

% we formulate the hypotheses
% H0: sigma_1^2 = sigma_2^2 (where sigma_1^2 is the variance of the first
% population and sigma_2^2 is the variance of the 2nd population)

% H1: sigma_1^2 != sigma_2^2 => we have a two-tailed distribution (opposite
% of H0 where it says that the variances are equal)

fprintf("We perform a two-tailed test for the population variances");

% we can perform the ratio of two population variances, for normal
% underlying populations and independent samples (Tests
% are conducted under identical controlled conditions and gas mileages for both types
% of gas are assumed independent and (approximately) normally distributed.)


X1 = [22.4, 21.7,24.5,23.4,21.6,23.3,22.4,21.6 ,24.8,20.0];
X2 = [17.7, 14.8,19.6, 19.6, 12.1, 14.8,15.4, 12.6,14.0 ,12.2];

n1 = length(X1);
n2 = length(X2);
  
% the significance level is 5% => alpha = 0.05

alpha = 0.05;

% vartest2 - x1, x2, alpha, 0

[h,p,ci,stats] = vartest2(X1, X2, alpha, 0);

% result of the test, h = 0, if H0 is NOT rejected,
% h = 1, if H0 IS rejected
fprintf('\n H is %d', h)
if h == 1 
    fprintf('\nSo the null hypothesis is rejected,\n')
    fprintf('i.e. the data suggests that the variances are not equal.\n')
else
    fprintf('\nSo the null hypothesis is not rejected,\n')
    fprintf('i.e. the data suggests that the variances are equal.\n')
end  

% build the rejection region
% RR = (-inf, tt_{alpha/2}) U (tt_{1-alpha/2}, inf)
% tt_{alpha/2}, tt_{1-alpha/2} - quantiles referring to F(n1-1, n2-1);

f1 = finv(alpha/2, n1-1, n2-1);
f2 = finv(1-alpha/2, n1-1, n2-1);
RR1 = [-inf, f1];
RR2 = [f2, inf];

% print ZVAL, P and RR on the screen

fprintf('\nThe rejection region is (%4.4f, %4.4f) U (%4.4f, %4.4f)\n', RR1, RR2);
fprintf('The value of the test statistic z is %4.4f\n', stats.fstat);
fprintf('The P-value of the test is %4.4f\n\n', p);
