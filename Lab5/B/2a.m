% It is thought that the gas mileage obtained by a particular model of
% automobile will be higher if unleaded premium gasoline is used in the
% vehicle rather than the regular unleaded gasoline. To gather evidence in
% this matter, 10 cars are randomly selected from the assembly line and
% tested using a specified brand of premium gasoline; 10 others are
% randomly selected and tested using the brand's regular gasoline. Tests
% are conducted under identical controlled conditions and gas mileages for
% both types of gas are assumed independent and (approximately) normally
% distributed.
%   Premium            Regular
% 22.4  21.7    |    17.7  14.8 
% 24.5  23.4    |    19.6  19.6 
% 21.6  23.3    |    12.1  14.8 
% 22.4  21.6    |    15.4  12.6 
% 24.8  20.0    |    14.0  12.2  

% a. Assuming sigma_1 = sigma_2, find a 100*(1 - alpha)% confidence
% interval for the difference of the true means

X1 = [22.4 21.7
       24.5 23.4
       21.6 23.3
       22.4 21.6
       24.8 20.0];
X2 = [17.7 14.8
      19.6 19.6
      12.1 14.8
      15.4 12.6
      14.0 12.2];
  
% compute the means
avgX1 = mean(X1);
avgX2 = mean(X2);

% compute the lengths
n1 = length(X1);
n2 = length(X2);

% compute the variances
s1var = var(X1);
s2var = var(X2);

alpha = 1 - input("Confidence level: ");

% compute the T(n1+n2-2) distribution 
t1 = tinv(1-alpha/2, n1+n2-1);

sp = sqrt(((n1-1)*s1var+(n2-1)*s2var)/(n1+n2-2));

limit1 = avgX1 - avgX2 - t1 *sp*sqrt(1/n1+1/n2);
limit2 = avgX1 - avgX2 + t1 *sp*sqrt(1/n1+1/n2);

fprintf('The confidence interval for the difference of the true means with equal standard deviation is: (%6.3f,%6.3f)\n',limit1,limit2);


