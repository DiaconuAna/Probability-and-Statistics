% the Poisson approximation for Binomial distribution
% if n >= 30 and p <=0.05, then
% Bino(n,p) ~= Poisson(lambda = n * p)

p = input("Input p <= 0.05: ");

for n = 30:1000
    x = 1:n;
    
    ybin = binopdf(x,n,p);
    ypoiss = poisspdf(x,n*p);
    
    subplot(2,1,1);
    plot(x,ybin,"r");
    title("Binomial distribution");
    
    subplot(2,1,2);
    plot(x,ypoiss,"g");
    title("Poisson distribution");
    
    pause(1);
    hold off
end
