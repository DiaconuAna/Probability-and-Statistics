% exercise 1. X has a Normal distribution
% N(miu, sigma)
% constraints: sigma >= 0

miu = input("miu = ");
sigma = input("sigma = ");

if(sigma < 0)
    fprintf('sigma must be >= 0 !');
end

% a. P(X<=0), P(X>=0)

% P(X<=0) = cdf
pxe0 = normcdf(0, miu, sigma)

%P(X>=0) = P(X>0) = 1 - P(X<=0) - because we are talking about a continuous
%distribution

pxge0 = 1 - normcdf(0, miu, sigma)

%b. P(-1 <= X <= 1) and P(X<=-1 or X>=1)

% P(-1 <= X <= 1) = P(X<=1) - P(X<=-1)
pb1 = normcdf(1,miu,sigma) - normcdf(-1,miu,sigma)

% P(X<=-1 or X>=1)= 1 - P(X>-1 and X<1) = 1 - P(-1<X<1) 
% = 1- P(-1 <= X <= 1) 

pb2 = 1 - pb1

%c. the value x_alpha such that P(X<x_alpha) = alpha, where alpha in (0,1)
% x_alpha - quantile of order alpha
% quantile - inverse of the cdf

% P(X<x_alpha) = alpha ; inverse of the cdf
alpha = input("Input alpha in (0,1): ");
x_alpha = norminv(alpha, miu, sigma)

%d. the value x_beta such that P(X>x_beta) = beta, where beta in (0,1)
% x_beta - quantile of order 1-beta

%P(X>x_beta) = beta 
beta = input("Input beta in (0,1): ");
x_beta = norminv(1-beta, miu, sigma)
