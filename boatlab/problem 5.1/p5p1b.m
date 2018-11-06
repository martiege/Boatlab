omega1_b = load('w1_b.mat', 'ans');
omega2_b = load('w2_b.mat', 'ans');

omega1_b = omega1_b.ans;
omega2_b = omega2_b.ans;

figure(1);
plot(omega1_b(1, :), omega1_b(2, :));
legend("legend");
title("title");
xlabel("xlabel");
ylabel("ylabel");

figure(2);
plot(omega2_b(1, :), omega2_b(2, :));
legend("legend");
title("title");
xlabel("xlabel");
ylabel("ylabel");

t_1 = zeros(1, size(omega1_b, 2) / 2);
a_1 = zeros(1, size(omega1_b, 2) / 2);
a_2 = zeros(1, size(omega1_b, 2) / 2);

for i = (size(omega1_b, 2) / 2 + 1):size(omega1_b, 2)
    t_1(i - size(omega1_b, 2) / 2) = omega1_b(1, i);
    a_1(i - size(omega1_b, 2) / 2) = omega1_b(2, i);
    a_2(i - size(omega1_b, 2) / 2) = omega2_b(2, i);
end

a_1 = a_1 * pi / 180;
a_2 = a_2 * pi / 180;

A_1_b = (max(a_1) - min(a_1)) / 2;
A_2_b = (max(a_2) - min(a_2)) / 2;