clc
clear all 
syms x
f= @(x) exp(x)-x*sin(x);
x0=0;
n=7;
[x,t]=newton(f, x0, n);
tabla=array2table(t,'VariableNames',{'k', 'x0',  'f(x0)',  'f`(x0)', 'x+1'})