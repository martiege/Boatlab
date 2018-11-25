info = open("p5p5d.mat");
info = info.ans;

time         = info(1, :);
compass_meas = info(2, :);
compass_est  = info(3, :);
rudder       = info(4, :);
bias_est     = info(5, :);

figure(1)
plot(time, 30 * ones(size(time)), time, compass_meas);
legend("Reference", "Measured compass");
xlabel("Time [s]");
ylabel("Compass [°]");
title("Measured compass with estimated bias removed");

figure(2);
plot(time, bias_est, time, rudder, time, (rudder - bias_est));
legend("Estimated bias", "Rudder input", "Rudder without bias removed");
xlabel("Time [s]");
ylabel("Rudder info [°]");
title("Rudder input and bias estimation");



