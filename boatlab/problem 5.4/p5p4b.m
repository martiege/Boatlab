init;

A = [0, 1; 0, -1 / T];
B = [0; K / T];
C = [1 0];

disp(rank(obsv(A, C)));