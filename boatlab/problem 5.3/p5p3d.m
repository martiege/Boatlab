init;

res = load('p5p3d.mat', 'ans');
res = res.ans;

time = res(1, :);
ref  = res(2, :);
meas = res(3, :);

plot(time, ref, time, meas);
legend("Reference", "Measured");
xlabel("Time [s]");
ylabel("Compass [°]");
title("PD controller response with waves");