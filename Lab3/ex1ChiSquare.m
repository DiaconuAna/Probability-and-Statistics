% X has a ChiSquare Distribution (chi2pdf/cdf/inv)

nu = input("nu = ");

%a. P(X<=0) and P(X>=0)

% P(X<=0) = cdf(0)

px0 = chi2cdf(0, nu)

% P(X>=0) = 1 - P(X<=0) (because the distribution is continuous)

pxge0 = 1 - px0

%b. P(-1<=X<=1) and P(X<=-1 or X>=1)

% P(-1 <= X <= 1) = cdf(1) - cdf(-1)
pxb1 = chi2cdf(1, nu) - chi2cdf(-1, nu)

% P(X<=-1 or X>=1) = 1 - P(X>-1 and X<1) = 1 - P(-1<X<1) = 1 - pxb1

pxb2 = 1 - pxb1

%c. the value x_alpha such that P(X<x_alpha)=alpha, for alpha in (0,1)
%x_alpha - quantile of order alpha
% the quantile is the inverse of the cdf => chi2inv

alpha = input("Input alpha in (0,1): ")

x_alpha = chi2inv(alpha, nu)

%d. the value x_beta such that P(X>x_beta) = beta, for beta in (0,1)
% x_beta - quantile of order 1-beta

beta = input("Input beta in (0,1): ")
x_beta = chi2inv(1-beta, nu)


