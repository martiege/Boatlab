init;

A = [0, 1, 0; 0, - 1 / T, - K / T; 0, 0, 0];
B = [0; K / T; 0];
C = [1, 0, 0];
E = [0; 0; 1];

disp(rank(obsv(A, C)));