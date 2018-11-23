compass = open("p5p5d_com.mat");
compass = compass.ans;

rudder = open("p5p5d_rudder.mat");
rudder = rudder.ans;

bias = open("p5p5d_bias.mat");
bias = bias.ans;

time = compass(1, :);
compass_meas = compass(2, :);
compass_est  = compass(3, :);

figure(1)
plot(time, compass_meas);
legend("Measured compass");
xlabel("Time [s]");
ylabel("Compass [°]");
title("Measured compass with estimated bias removed");

time = bias(1, :);
bias_est = bias(2, :);



figure(2);
plot(time, bias_est);
legend("Estimated bias");
xlabel("Time [s]");
ylabel("Compass [°]");
title("Bias estimation from Kalman filter");



