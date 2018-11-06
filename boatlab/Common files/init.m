
%% P5P1
T = 86.5246;
K = 0.174215;

if false
    T = 73.5129;
    K = 0.140523;
end

%% P5P2
filer = load('wave.mat', 'psi_w');

x = filer.psi_w(2,:);
[pxx,f] = pwelch(x.*pi/180, 4096, [], [], 10);

omega = f * 2 * pi;
pxx = pxx / (2 * pi);

[PSD_max, max_index] = max(pxx);
omega_0 = omega(max_index);
sigma = sqrt(PSD_max);

P_psi_omega = @(lambda, omega)((omega .* (2 * lambda * omega_0 * sigma)).^2 ./ (omega.^4 + omega_0^4 + omega.^2 .* (2 * omega_0^2) * (2 * lambda^2 - 1)));
x0 = 1;
lambda = lsqcurvefit(P_psi_omega, x0, omega, pxx);

K_omega = 2 * lambda * omega_0 * sigma;

%% P5P3
omega_c = 0.10;
phase_margin = 50;

T_d = T;
T_f = -1 / (omega_c * tan((180 - phase_margin) * pi / 180));
K_pd = (1 + T_f * omega_c) * omega_c / K;

A = [0, 1, 0, 0, 0;
     -omega_0^2, -2 * lambda * omega_0, 0, 0, 0;
     0, 0, 0, 1, 0;
     0, 0, 0, (- 1 / T), (- K / T);
     0, 0, 0, 0, 0];
 
B = [0; 0; 0; K / T; 0];

C = [0, 1, 1, 0, 0];

D = 0;

E = [0, 0; K_omega, 0; 0, 0; 0, 0; 0, 1];

%% P5P5
S_f = 10;
S_t = inv(S_f);

[~, B_d] = c2d(A, B, S_t);
[A_d, E_d] = c2d(A, E, S_t);

C_d = C;
D_d = D; % 0, ingen bidrag

p5p5b;
p5p5c;
