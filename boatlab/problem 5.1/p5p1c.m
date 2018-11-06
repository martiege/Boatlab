omega1_b = load('w1_b.mat', 'ans');
omega2_b = load('w2_b.mat', 'ans');
omega1_c = load('w1_c.mat', 'ans');
omega2_c = load('w2_c.mat', 'ans');

omega1_b = omega1_b.ans;
omega2_b = omega2_b.ans;
omega1_c = omega1_c.ans;
omega2_c = omega2_c.ans;

omega1_noise = omega1_c(2, :) - omega1_b(2, :);
omega2_noise = omega2_c(2, :) - omega2_b(2, :);


figure(1);
plot(omega1_b(1, :), omega1_b(2, :), omega1_c(1, :), omega1_c(2, :), omega1_c(1, :). omega1_noise);
legend("Response from omega 1 without noise", "Response from omega 1 with noise", "Noise");
title("Response omega 1");
xlabel("Time [s]");
ylabel("Degrees [°]");


figure(2);
plot(omega2_b(1, :), omega2_b(2, :), omega2_c(1, :), omega2_c(2, :), omega2_c(1, :), omega2_noise);
legend("Response from omega 2 without noise", "Response from omega 2 with noise", "Noise");
title("Response omega 2");
xlabel("Time [s]");
ylabel("Degrees [°]");


t_1 = zeros(1, size(omega1_c, 2) / 2);
a_1 = zeros(1, size(omega1_c, 2) / 2);
a_2 = zeros(1, size(omega1_c, 2) / 2);

for i = (size(omega1_c, 2) / 2 + 1):size(omega1_c, 2)
    t_1(i - size(omega1_c, 2) / 2) = omega1_c(1, i);
    a_1(i - size(omega1_c, 2) / 2) = omega1_c(2, i);
    a_2(i - size(omega1_c, 2) / 2) = omega2_c(2, i);
end

a_1 = a_1 * pi / 180;
a_2 = a_2 * pi / 180;

A_1_c = (max(a_1) - min(a_1)) / 2;
A_2_c = (max(a_2) - min(a_2)) / 2;