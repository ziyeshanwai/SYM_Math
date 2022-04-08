clc;
clear all;
close all;

syms ab0 ab1 ac0 ac1 ax0 ax1 alpha beta
% alpha * A + beta * B + gama * C  = i
% alpha + beta + gama = 1

f = alpha * ab0 + beta * ac0 - ax0;
g = alpha * ab1+ beta * ac1  - ax1;
sol = solve(f, g, alpha, beta)
sol.alpha
sol.beta
