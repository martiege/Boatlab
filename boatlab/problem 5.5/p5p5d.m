info = open("p5p5d.mat");
info = info.ans;

time         = info(1, :);
compass_meas = info(2, :);
compass_est  = info(3, :);
rudder       = info(4, :);
bias_est     = info(5, :);

compass = open("p5p5d_com.mat");
compass = compass.ans;

% rudder = open("p5p5d_rudder.mat");
% rudder = rudder.ans;
% 
% bias = open("p5p5d_bias.mat");
% bias = bias.ans;
% 
% time = compass(1, :);
% compass_meas = compass(2, :);
% compass_est  = compass(3, :);

figure(1)
plot(time, compass_meas);
legend("Measured compass");
xlabel("Time [s]");
ylabel("Compass [°]");
title("Measured compass with estimated bias removed");

figure(2);
plot(time, bias_est, time, rudder, time, (rudder - bias_est));
legend("Estimated bias", "Rudder input", "Rudder without bias removed");
xlabel("Time [s]");
ylabel("Rudder info [°]");
title("Rudder input and bias estimation");



