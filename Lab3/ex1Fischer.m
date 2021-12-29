% X has a Fischer distribution F(v1, v2) where
%   v1 - numerator degrees of freedom
%   v2 - denominator degrees of freedom

v1 = input("Input numerator degrees of freedom: ");
v2 = input("Input denominator degrees of freedom: ");

%a. P(X<=0) and P(X>=0)

% P(X<=0) = cdf(0)

px0 = fcdf(0, v1, v2)

% P(X>=0) = 1 - P(X<0) = 1 - P(X<=0) - continuous distribution

pxge0 = 1 - px0

%b. P(-1<=X<=1) and P(X<=-1 or X>=1)

% P(-1<=X<=1) = cdf(1) - cdf(-1)

pxb1 = fcdf(1, v1, v2) - fcdf(-1, v1, v2)

% P(X<=-1 or X>=1) = 1 - P(X>-1 and X<1) = 1 - P(-1<X<1) = 1 - pxb1

pxb2 = 1 - pxb1

%c. the value x_alpha such that P(X<x_alpha)=alpha, for alpha in (0,1)
%x_alpha - quantile of order alpha
% the quantile is the inverse of the cdf => finv

alpha = input("Input alpha in (0,1): ");
x_alpha = finv(alpha, v1, v2)

%d. the value x_beta such that P(X>x_beta) = beta, for beta in (0,1)
% x_beta - quantile of order 1-beta

beta = input("Input beta in (0,1): ");
x_beta = finv(1-beta, v1, v2)
