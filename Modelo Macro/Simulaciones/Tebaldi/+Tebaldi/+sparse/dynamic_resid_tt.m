function [T_order, T] = dynamic_resid_tt(y, x, params, steady_state, T_order, T)
if T_order >= 0
    return
end
T_order = 0;
if size(T, 1) < 12
    T = [T; NaN(12 - size(T, 1), 1)];
end
T(1) = params(4)*y(16)^(-params(6));
T(2) = y(17)^params(1);
T(3) = y(28)*y(20)*T(2);
T(4) = y(19)^(1-params(1));
T(5) = params(1)*y(24)^(1-params(1));
T(6) = y(17)^(params(1)-1);
T(7) = params(1)^2;
T(8) = (T(7)/y(21))^(1/(1-params(1)));
T(9) = (1-params(1))*(1+y(21))^(1-params(8))/params(1);
T(10) = y(28)^params(2);
T(11) = params(4)*y(30)^(-params(6))*params(2);
T(12) = (-((-params(5))*(1-y(19))^(-params(7))));
end
