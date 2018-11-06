function [x_est, y_est] = kalman(input)

persistent acc_sum init_flag

if isempty(init_flag)
    init_flag = 1 ;
    acc_sum = 0 ;
end

P_k = (eye(5) - K_k * H_k) * P_k^-;

acc_sum = acc_sum + i n ;
output = acc_sum ;

end

