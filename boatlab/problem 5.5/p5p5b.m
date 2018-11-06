res = load("noise_meas.mat");
res = res.ans;

time = res(1, :);
meas = res(2, :) * pi / 180;

R = var(meas);
