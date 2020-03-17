function [f] = Graphical()
m = 68.1;
g = 9.81;
t = 10;
v = 40;
c = 0.1:0.1:100;
f = (m*g./c).*(1-exp(-c.*t./m))-v;

plot(c,f)
grid on
xlabel('c degeri')
ylabel('f degeri')
title('c-f')