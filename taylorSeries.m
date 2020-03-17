%Taylor Series Method
function [y] = taylorSeries( a,b,point,n,h )

syms x;
f = x*exp(x);
y = taylor(f,'ExpansionPoint',point,'Order',n);
size(char(y));
y = simplify(y);
size(char(y));

xd = a:h:b;
yd = subs(f,x,xd);
fplot(y, [a,b]);
hold on
plot(xd, yd, 'r-.');
title('Taylor approximation vs. actual function');
legend('Taylor','Function');
