%Plot the graphs of the pdf and the cdf of a random variable X having a binomial
%distribution of parameters n and p (given by the user).

prompt1 = 'What is the value of n? ';
n = input(prompt1);
prompt2 = 'What is the value of p? ';
p = input(prompt2)

if(p<0 || p>1)
    fprintf('p should be between 0 and 1');
end

x = 0:1:n;   % X goes from 0 to N, 1 by 1
y = binocdf(x, n, p) % y = cdf(x)

tiledlayout(3,1);

nexttile
plot(x,y,'r*');
title('Plot of the binomial pdf');

z = 0: 0.001:n;
w = binocdf(z,n,p);

nexttile
plot(z,w);
title('Plot of the binomial cdf');
