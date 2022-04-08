clc;
clear all;
close all;

syms ax ay bx by cx xy ix iy alpha beta gama
% alpha * A + beta * B + gama * C  = i
% alpha + beta + gama = 1

f = alpha * ax + beta * bx + gama * cx - ix;
g = alpha * ay + beta * by + gama * cx - iy;
h = alpha + beta + gama -1;

sol = solve(f, g, h, alpha, beta, gama)
sol.alpha
sol.beta
sol.gama
simplify(sol.alpha + sol.beta + sol.gama )