clc
clear all 
syms x
f= @(x) exp(x)-x.*sin(x);
d=diff(f,x);
x0=-1/2;
n=10;
[x,t]=newton(f, x0, n);
xx = -2:pi/100:1;
tabla=array2table(t,'VariableNames',{'k', 'x0',  'f(x0)',  'f`(x0)', 'x+1'})
plot(xx,f(xx))
hold on 
for a=1:length(x)
    dx=subs(d, 'x', x(a));
    scatter(x(a),f(x(a)));
    y=@(q) dx*(q-x(a))+ f(x(a));
    plot(xx,y(xx))
end
