clc;
clear all;
syms x y z lamda u v
P = sym('P%d%d', [3 4]);  % Projection Matrix
R = sym('R%d%d', [3 4]);  % translation Matrix
point = [[x]; [y]; [z]; 1]; % points
R.';  % transpose
new_point = [R*point;[1]];
uv = P*new_point;
lamda * u == uv(1)
lamda * v == uv(2)
lamda = uv(3);
% eqns = [lamda * u - uv(1) == 0, lamda * v - uv(2) == 0, lamda - uv(3) == 0];
eqns = [lamda * u - uv(1) == 0, lamda * v - uv(2) == 0];
[A,b] = equationsToMatrix(eqns, R)
r = reshape(R, 12, 1);  % column-major
tmp = A * r - b ;
an = tmp(1) -( lamda * u - uv(1));
collect(an)
simplify(an)  % it is used to detect the equation is right or not !
% syms x y z
% eqns = [x+y-2*z == 0,
%         x+y+z - 1== 0,
%         z + 5 == 0];
% [A,b] = equationsToMatrix(eqns, [x y]);
% tmp = A * [[x];[y]] -b;
% tmp(1) - (x+y-2*z)
% 

