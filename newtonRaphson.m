% Newton-Raphson Method
%%2.adýmdan sonra hatalý düzelt
function [c,fc,E] = newtonRaphson(a,n,err)
syms x;
f =@(x) x^3-2*x^2-6;
df = matlabFunction(diff(f(x)));

c = zeros(n,1);
fc = zeros(n,1);
dfc = zeros(n,1);

c(1,1) = a;
fc(1,1) = f(a);
dfc(1,1) = df(a);

E = zeros(n,1);

disp('x-----next(x)');
for i = 1:n
    yeniturev = matlabFunction(diff(f(x,i+1)));
    dfc(i,1) = yeniturev(a);
    c(i+1,1)=c(i,1)-(fc(i,1)/dfc(i,1));
    fc(i+1,1)=f(c(i+1,1));
    E(i,1) = (fc(i+1,1)-fc(i,1));
    disp([    c(i)     fc(i)]);    
    if (f(fc(i+1,1))-f(fc(i,1))<err)
        disp('Error function provided.');
        break;
    end   
end