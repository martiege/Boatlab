Q = [30, 0; 
     0, 1e-6];

P_min_0 = [1,    0,        0,      0,   0;
           0,    0.013,    0,      0,   0;
           0,    0,        pi^2,   0,	0;
           0,    0,        0,      1,   0;
           0,    0,        0,      0,   2.5e-3];

x_min_0 = [0; 0; 0; 0; 0];

data = struct('A_d', A_d,'B_d',B_d,'C_d',C_d, 'E_d',E_d,'Q',Q,'R',R,'P_min_0',P_min_0,'x_min_0',x_min_0,'I',eye(5));

% [PHI, DELTA] = c2d(A, B, 1/10);
% [PHI, GAMMA] = c2d(A, E, 1/10);
