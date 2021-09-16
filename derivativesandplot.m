clc;
clear;
syms x;
y = exp(2*x);
ezplot(y);
grid on;
dy = diff(y, 1);
hold on;
ezplot(dy)
simplify(dy)
% http://blog.sina.com.cn/s/blog_a36a563e0102vuo2.html
