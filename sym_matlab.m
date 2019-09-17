clc
clear all;
M_l=sym('m%d%d',[3,4]);
% M_r=sym('m_r%d%d',[3,4]);
syms s u v;
% syms s_r u_r v_r;
syms X Y Z;
s = M_l(3,1)*X + M_l(3,2)*Y + M_l(3,3)*Z + M_l(3,4);
f_0 = M_l(1,1)*X + M_l(1,2)*Y + M_l(1,3)*Z + M_l(1,4)-s*u;
f_1 = M_l(2,1)*X + M_l(2,2)*Y + M_l(2,3)*Z + M_l(2,4)-s*v;
f_0 = collect(collect(collect(f_0, X),Y),Z);% 合并同类项目
f_1 = collect(collect(collect(f_1, X),Y),Z);