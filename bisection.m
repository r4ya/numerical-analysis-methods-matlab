% Bisection Method
function [c,fc,graphc,graphfc] = bisection(a,b,n)
f = @(x) exp(x)-x^2+3*x-2;
fa = f(a);
fb = f(b);
graphc = zeros(n,1);
graphfc = zeros(n,1);
if fa*fb > 0
    error('Function has not root in the given domain.');
end
disp('x     y');
for i = 1:n
    c = (a+b)/2;
    fc = f(c);
    disp([    c     fc]);
    graphc(i,1)=c;
    graphfc(i,1)=fc;
    if fc == 0
        break
    end
    
    if fa*fc < 0
        b = c;
    else
        a = c;
    end
end

plot(graphc,graphfc,'o--');
title('Function f, bisection method');
xlabel('iteration point');
ylabel('iteration value');
grid on;