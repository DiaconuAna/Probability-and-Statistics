% Write a Matlab code to visualize how the binomial distribution gradually takes
% the shape of the normal distribution as n -> inf

% for moderate values of p (0.05 <= p <= 0.95)
% and large values of n ( n->inf)
% the binomial distribution Bino(n,p) approaches the normal distribution
% Norm(miu = n*p, sigma = sqrt(n*p*(1-p))


%step 1: plot the binomial distribution for increasing values of n
%step2: plot the normal distribution
%step3: put them together

p = input("Input p in (0,1): ")

if(p<0 || p>1)
    fprintf('p should be between 0 and 1');
end

for n = 1:1000
    x = 1:n;
    y = binopdf(x,n,p);
    subplot(2,1,1);
    plot(x,y,"r");
    title("Binomial distribution")
    
    
    miu = n*p;
    sigma = sqrt(n*p*(1-p));
    
    yn = normpdf(x, miu, sigma);
    
    subplot(2,1,2);
    plot(x,yn,"g");
    title("Normal distribution")
    
    pause(1);
    hold off;
    
end 
