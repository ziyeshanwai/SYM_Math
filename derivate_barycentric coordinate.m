clc;
clear all;
n = 3;
syms P1 P2 P3 P11 P12 P13 P21 P22 P23 P31 P32 P33
PP=[P1 P2 P3];
P1= [P11 P12 P13];
P2= [P21 P22 P23];
P3= [P31 P32 P33];
syms w_1 w_2 w_3
eq_1 = w_1 + w_2 + w_3 - 1;
eq_2 = w_1 * P1 + w_2 * P2 + w_3 * P3 - PP;
[w_1, w_2, w_3] = solve(eq_2, w_1, w_2, w_3 );
P11 = 3;
P12 = 0;
P13 = 0;
P21 = 0;
P22 = 3;
P23 = 0;
P31 = 0;
P32 = 0;
P33 = 3;
P1 = 1.5;
P2 = 1.5;
P3 = 1.5;
w_1 = eval(subs(w_1))
w_2 = eval(subs(w_2))
w_3 = eval(subs(w_3))


% subs(eq_1)
subs(eq_2)
simplify(eq_2)
