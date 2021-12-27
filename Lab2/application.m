% Application - Lab2
% a coin is tossed 3 times (n = 3)
% X - number of heads that appear. Probability of success = 0.5

% a. pdf(x). What type of distribution does X have?
% => Binomial distribution (independent trials with 2 possible outcomes -
% success or failure)

%a. 
n = 3; % 3 trials
x = 0:n; % x = 0,1,2...,n
p = 0.5; %probability of success (of getting head) = 0.5
y = binopdf(x,n,p);

%b. Find the cdf of X
z = binocdf(x,n,p)

%c. Find P(X=0) and P(X!=1)
px0 = binopdf(0,n,p)

%P(X!=1) = 1 - P(X=1)
pxn1 = 1 - binopdf(1,n,p)

%d. P(X<=2), P(X<2)

%P(X<=2) = cdf(x)
pxle2 = binocdf(2,n,p)

%P(X<2) = P(X<=2) - P(X=2)
pxl2 = pxle2 - binopdf(2,n,p)

%e. P(X>=1), P(X>1)

%P(X>=1) = 1 - P(X<1) = 1 - (P(X<=1) - P(X=1)) = 1 - P(X<=1) + P(X=1)
pxge1 = 1 - binocdf(1,n,p) + binopdf(1,n,p)

% P(X>1) = 1 - P(X<=1)
pxg1 = 1 - binocdf(1,n,p)

%f. Write a Matlab code that simulates 3 coin tosses and computes the value of the
% variable X. (number of heads)

N = 3;
X = 0 ;
for i = 1:N
    c = rand ;
    if c > 0.5
        fprintf('Tails\n')
    else
        X = X+1 ;
        fprintf('Heads\n')
    end
end
fprintf('In %d tosses,number of Heads=%d n',N,X)


