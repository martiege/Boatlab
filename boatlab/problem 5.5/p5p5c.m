Q = [30, 0; 
     0, 1e-6];

P_min_0 = [1,    0,        0,      0,   0;
           0,    0.013,    0,      0,   0;
           0,    0,        pi^2,   0,	0;
           0,    0,        0,      1,   0;
           0,    0,        0,      0,   2.5e-3];

x_min_0 = [0; 0; 0; 0; 0];

data = struct('A_d', A_d,'B_d',B_d,'C_d',C_d, 'E_d',E_d,'Q',Q,'R',R,'P_min_0',P_min_0,'x_min_0',x_min_0,'I',eye(5));

% compass_c = open('p5p5c_com.mat');
% compass_c = compass_c.ans;
% 
% bias_c = open('p5p5c_bias.mat');
% bias_c = bias_c.ans;
% 
% rudder_c = open('p5p5c_rudder.mat');
% rudder_c = rudder_c.ans;
% 
% time_c = compass_c(1, :);
% compass_meas_c = compass_c(2, :);
% compass_est_c = compass_c(3, :);
% 
% figure(1);
% plot(time_c, compass_est_c, time_c, compass_meas_c);
% legend("Compass estimate", "Compass measured");
% xlabel("Time [s]");
% ylabel("Compass [°]");
% title("Kalman filter, compass");
% 
% compass_bias_c = bias_c(2, :);
% 
% figure(2);
% plot(time_c, compass_bias_c);
% legend("Bias estimate");
% xlabel("Time [s]");
% ylabel("Bias [°]");
% title("Estimate of the bias");
