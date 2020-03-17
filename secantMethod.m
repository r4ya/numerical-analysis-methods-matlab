% Secant Method
function [c,E] = secantMethod(a,b,N,err)
f = @(x) exp(x)+exp(-x)+2*cos(x)-6;
c = zeros(N+2,1);
c(1,1) = a;
c(2,1) = b;

E = zeros(N+2,1);
E(1,1) = b-a;

disp('   x                   Error');
for i=1:N
    disp([    c(i)    E(i)]);
    if (f(c(i+1,1))-f(c(i,1))) == 0
        disp('Result infinitive');
        break;
    end
    c(i+2,1)=c(i+1,1)-(f(c(i+1,1))*(c(i+1,1)-c(i,1)))/(f(c(i+1,1))-f(c(i,1)));
    
    E(i+1,1) = c(i+2,1)-c(i+1,1);
    
    if (abs(E(i+1,1))<err)
        disp('Error function provided.');
        break;
    end   
end

plot(E,c,'o--');
title('Function f, Secant Method');
xlabel('Error Value');
ylabel('X point');
grid on;
    