function [b, psi] = kalman(y,u,data)

persistent init A_d B_d C_d E_d Q R P_min_0 x_min_0 I

if isempty(init)
    init = 1;
    [A_d, B_d, C_d, E_d, Q, R, P_min_0, x_min_0, I] = deal(data.A_d,data.B_d,data.C_d,data.E_d,data.Q,data.R,data.P_min_0,data.x_min_0,data.I);
end

K_k = P_min_0*C_d'*inv((C_d*P_min_0*C_d'+R));

x_k = x_min_0+K_k*(y-C_d*x_min_0);

P_k = (I-K_k*C_d)*P_min_0*((I-K_k*C_d)')+K_k*R*K_k';

x_min_0 = A_d*x_k+B_d*u;

P_min_0  = A_d*P_k*(A_d)'+E_d*Q*(E_d)';

b = x_k(5);
psi = x_k(3);

end

