%Exercise 2%

%x is in [0,3] - graph the functions x^5/10, x*sin(x) and cos(x)

%plotting the graphs in the same picture
x = linspace(0,3,100);
y = x.^5/10;
plot(x,y,'o:');

hold on
z = x.*sin(x);
plot(x,z,'*');

hold on
w = cos(x)
plot(x,w,'g:*');

xlabel('x')

title('Big plot')
legend('x^5/10','x*sin(x)','cos(x)')

hold off
%hold off


