model_data = load('p5p1d_meas.mat');
model_data = model_data.ans;

t = model_data(1, :);
ship = model_data(2, :);
modl = model_data(3, :);

figure(1);
plot(t, ship, t, modl);
legend("Ship response", "Model response");
title("Model and ship response to a 1° step function");
ylabel("Degrees [°]");
xlabel("Time [s]");

model_data_noise = load('p5p1d_meas_noise.mat');
model_data_noise = model_data_noise.ans;

t_noise = model_data_noise(1, :);
ship_noise = model_data_noise(2, :);
modl_noise = model_data_noise(3, :);

figure(2);
plot(t_noise, ship_noise, t_noise, modl_noise);
legend("Ship response", "Model response");
title("Model and ship response to a 1° step function with noise");
ylabel("Degrees [°]");
xlabel("Time [s]");
