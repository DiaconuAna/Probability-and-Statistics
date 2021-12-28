% X has a Student distribution 
n = input("Input n - the degree of freedom (n >=1): ");

if (n < 1)
    fprintf("n >= 1")
end


%a. P(X<=0) and P(X>=0)

% P(X<=0) = cdf(0)
px0 = tcdf(0, n)

% P(X>=0) = 1 - P(X<=0) - as the distribution is continuous
pxg0 = 1 - px0 % or 1 - tcdf(0,n)

%b. P(-1 <= X <= 1) and P(X<=-1 or X>=1)

% P(-1 <= X <= 1) = cdf(1) - cdf(-1)
pxb1 = tcdf(1, n) - tcdf(-1, n)

% P(X<=-1 or X>=1) = 1 - P(X>-1 and X<1) = 1 - P(-1 < X < 1) = 1 - P(-1 <= X <= 1) 
% as Student is a continuous distribution

pxb2 = 1 - pxb1

%c. the value x_alpha such that P(X<x_alpha)=alpha, for alpha in (0,1)
%x_alpha - quantile of order alpha
% the quantile is the inverse of the cdf => tinv
alpha = input("Input alpha in (0,1): ");

if(alpha < 0 || alpha > 1)
    fprintf("Invalid alpha value")
end

x_alpha = tinv(alpha, n)

%d. the value x_beta such that P(X>x_beta) = beta, for beta in (0,1)
% x_beta - quantile of order 1-beta

beta = input("Input beta in (0,1): ");

if(beta < 0 || beta > 1)
    fprintf("Invalid beta value")
end

x_beta = tinv(1-beta, n)
    
    
