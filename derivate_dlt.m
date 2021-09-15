clc;
clear all;
syms x y z lamda u v
P = sym('P%d%d', [3 4]);  % Projection Matrix
point = [[x]; [y]; [z]; 1]; % points
uv = P*point;
% lamda * u == uv(1)
% lamda * v == uv(2)
lamda = uv(3);
% eqns = [lamda * u - uv(1) == 0, lamda * v - uv(2) == 0, lamda - uv(3) == 0];
eqns = [lamda * u - uv(1) == 0, lamda * v - uv(2) == 0];
[A,b] = equationsToMatrix(eqns, P)
r = reshape(P, 12, 1);  % column-major 
tmp = A * r - b ;
an = tmp(1) -( lamda * u - uv(1));
% collect(an)
simplify(an)  % it is used to detect the equation is right or not !
