init;

A = [0, 1, 0, 0; -omega_0^2, -2 * lambda * omega_0, 0, 0; 0, 0, 0, 1; 0, 0, 0, - 1 / T];
B = [0; 0; 0; K / T];
C = [0, 1, 1, 0];
E = [0; 0; 0; K / T];

disp(rank(obsv(A, C)));