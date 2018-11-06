init;

plot(omega, pxx, omega, P_psi_omega(lambda, omega));
legend("Data", join(["Fitted with lambda = ", num2str(lambda)]));
xlabel("omega [rad / s]");
ylabel("S_psi_omega, P_psi_omega [rad]");
title("S_psi_omega vs. analytical P_psi_omega for calculated lambda");