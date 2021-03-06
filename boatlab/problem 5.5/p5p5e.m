info = open("p5p5e.mat");
info = info.ans;

wave_inf = open("p5p5e_wave.mat");
wave_inf = wave_inf.ans;

wave_time = wave_inf(1, :);
wave_actual = wave_inf(2, :);
wave_estimate = wave_inf(3, :);

time         = info(1, :);
compass_meas = info(2, :);
compass_est  = info(3, :);
rudder       = info(4, :);
bias_est     = info(5, :);

figure(1)
plot(time, compass_est, time, 30 * ones(size(time)), time, compass_meas);
legend("Wave filtered compass", "Reference", "Measured compass");
xlabel("Time [s]");
ylabel("Compass [�]");
title("Measured compass with estimated bias removed");

figure(2);
plot(time, bias_est, time, rudder, time, (rudder - bias_est));
legend("Estimated bias", "Rudder input", "Rudder without bias removed");
xlabel("Time [s]");
ylabel("Rudder info [�]");
title("Rudder input and bias estimation");

figure(3);
plot(wave_time, wave_actual, wave_time, wave_estimate, wave_time, wave_actual - wave_estimate);
legend("Actual wave influence", "Estimated wave influence", "Difference");
xlabel("Time [s]");
ylabel("Wave influence [�]");
title("Wave influence from the system and the Kalman filter");
