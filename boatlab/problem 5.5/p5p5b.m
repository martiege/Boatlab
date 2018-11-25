res = load("noise_meas.mat");
res = res.ans;

time = res(1, :);
meas = res(2, :);

R = var(meas) / T_s;
