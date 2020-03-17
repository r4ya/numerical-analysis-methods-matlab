% Fixed-Point Iteration Method
function [c,fc,E] = fixedPoint(a,n,err)
f = @(x) (((x^2)+3)/2)^(1/2);
c = zeros(n,1);
fc = zeros(n,1);
c(1,1) = a;
fc(1,1) = f(a);
E = zeros(n,1);

disp('x     y');
for i = 1:n
    c(i+1,1)=f(fc(i,1));
    fc(i+1,1)=f(fc(i,1));
    E(i,1) = (fc(i+1,1)-fc(i,1));
    disp([    c(i)     fc(i)]);
    if (f(fc(i+1,1))-f(fc(i,1))<err)
        disp('Error function provided.');
        break;
    end   
end

plot(E,fc,'o--');
title('Function f, Fixed-Point Iteration Method');
xlabel('Error Value');
ylabel('X point');
grid on;