%plotting the graphs in different picture, but in the same window
x = linspace(0,3,100);
y = x.^5/10;
z = x.*sin(x);
w = cos(x);

tiledlayout(3,1);

nexttile
plot(x,y,'o:');
title('Plot 1');
legend('x^5/10');

nexttile
plot(x,z,'g*');
title('Plot 2');
legend('x*sin(x)');

nexttile
plot(x,w,'--rs');
title('Plot 3');
legend('cos(x)')
